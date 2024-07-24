package com.emp.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.emp.entity.Employee;
import com.emp.service.EmployeeService;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
    
    @GetMapping("/")
    public String home() {
    	
    	return "index";
    }
    @GetMapping("/logout")
    public String logout() {
    	flag=false;
    	return "index";
    }
    boolean flag = false;
    public boolean getAuthenticated(Long id, String password) {
    	Employee employee = employeeService.findEmployeeById(id);
    	
    	if(employee!=null&&employee.getPassword().equals(password)) {
    		
    		return true;
    		
    	}
    	return false;
    } 
    
    
    @PostMapping("/login")
    public String login(@RequestParam("id") String strid, @RequestParam("password") String password, Model m) {
    	
    	Long id = Long.parseLong(strid);
    	boolean isAuthenticated = getAuthenticated(id, password);
    	if(isAuthenticated) {
    		flag=true;
    		return "redirect:/employees";
    	}
    	else {
    		String err = "Invalid Id or Password";
        	m.addAttribute("msg",err);
    	}
    	return "index";
    	
    	 
    }

    @GetMapping("/employees")
    public String getAllEmployees(@RequestParam(defaultValue="1") int page,Model m) {
    	int pageSize = 5;
    	List<Employee> employees = employeeService.getAllEmployees();
    	int totalItems = employees.size();
    	int totalPages = (int) Math.ceil((double) totalItems / pageSize);
    	int start = (page - 1) * pageSize;
        int end = Math.min(start + pageSize, totalItems);
        List<Employee> pageList = employees.subList(start, end);

        m.addAttribute("employees", pageList);
        m.addAttribute("currentPage", page);
        m.addAttribute("totalPages", totalPages);
        System.out.print(employees);
        if(flag) {
        	return "employees";
        }
        return "index";
    }

    @GetMapping("/add")
    public String addEmployeeForm(Model model) {
        model.addAttribute("employee", new Employee());
        if(flag) {
        	return "addEmp";
        }
        return "index";
    }

    @PostMapping("/save")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.saveEmployee(employee);
        return "redirect:/employees";
    }

    @GetMapping("/edit/{id}")
    public String editEmployeeForm(@PathVariable Long id, Model model) {
        Employee employee = employeeService.getEmployeeById(id).orElseThrow(() -> new IllegalArgumentException("Invalid employee Id:" + id));
        model.addAttribute("employee", employee);
        if(flag) {
        	return "editEmp";
        }
        return "index";
    }
    
    @GetMapping("/view/{id}")
    public String viewEmployee(@PathVariable Long id, Model model) {
        Employee employee = employeeService.getEmployeeById(id).orElseThrow(() -> new IllegalArgumentException("Invalid employee Id:" + id));
        model.addAttribute("employee", employee);
        return "view";
    }

    @PostMapping("/update")
    public String updateEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.saveEmployee(employee);
        return "redirect:/employees";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employees"; 
    }
}
