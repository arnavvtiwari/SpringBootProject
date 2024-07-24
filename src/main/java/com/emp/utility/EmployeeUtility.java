package com.emp.utility;

import org.springframework.beans.factory.annotation.Autowired;

import com.emp.entity.Employee;
import com.emp.service.EmployeeService;

public class EmployeeUtility {
	@Autowired 
	private EmployeeService employeeService;
	public boolean getAuthenticated(Long id, String password) {
    	Employee employee = employeeService.findEmployeeById(id);
    	
    	if(employee!=null&&employee.getPassword().equals(password)) {
    		
    		return true;
    		
    	}
    	return false;
    } 
}
