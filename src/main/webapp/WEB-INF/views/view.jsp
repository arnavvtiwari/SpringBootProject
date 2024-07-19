<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Detail</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        table, th, td {
            border: 1px solid #ddd;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #666699;
            color: white;
        }
        a.button {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #666699; 
            color: white;
            border-radius: 5px;
            margin-top: 24px;
            margin-left: 40%;
        }
        
        a.button:hover {
            background-color: #8533ff;
        }
        a.button1 {
            display: inline-block;
            padding: 5px 10px;
            text-decoration: none;
            background-color: #666699; 
            color: white;
            border-radius: 5px;
            margin-top: 10px;
            margin-left: 80%
        }
        
        a.button1:hover {
            background-color: #8533ff;
        }
        a.button2 {
            display: inline-block;
            padding: 5px 10px;
            text-decoration: none;
            background-color: #666699; 
            color: white;
            border-radius: 5px;
            margin-top: 10px;
            margin-left: 5px;
            float: right;
            
        }
        
        a.button2:hover {
            background-color: #8533ff;
        }
        a.btnsm{
        display:inline-block;
        padding: 2px 5px;
        background-color: #666699;
        color:white;
        text-decoration:none;
        border-radius:5px;
        margin-left:2px;
        margin-right:2px;
        }
        a.btnsm:hover{
        background-color: #8533ff;
        }
        a.txt-e{
        display: inliine-block;
        padding: 3px 5px;
        border-radius:5px;
        background-color: #f2f2f2;
        text-decoration: none;
        color: black;
        }
        a.txt-e:hover{
        background-color: #2f9ff5;
        color: #f2f2f2;
        }
        a.txt-d{
        display: inliine-block;
        padding: 3px 5px;
        border-radius: 5px;
        background-color: #f2f2f2;
        text-decoration: none;
        color: black;
        }
        a.txt-d:hover{
        background-color: #f53d3d;
        color:#f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Employees List</h1>
    <table>
    <tr>
        <th>EID</th>
        <th>Name</th>
        <th>Salary</th>
        <th>Designation</th>
        <th>DOB</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
 
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.salary}</td>
            <td>${employee.designation}</td>
            <td>${employee.dob}</td>
            <td><a href="/edit/${employee.id}" class="txt-e">Edit</a></td>
            <td><a href="/delete/${employee.id}" class="txt-d">Delete</a></td>
        </tr>

</table>


    <a href="/employees" class="button">Home</a>
</body>
</html>