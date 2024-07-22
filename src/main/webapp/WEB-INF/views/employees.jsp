<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employees List</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
        }
        
        .employee-table {
            display: table;
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        .employee-row {
            display: table-row;
        }
        
        .employee-cell {
            display: table-cell;
            border: 1px solid #ddd;
            padding: 5px;
            text-align: left;
        }
        
        .employee-header {
            background-color: #666699;
            color: white;
            font-weight: bold;
            text-align: center;
        }
        
        .employee-actions {
            text-align: center;
        }
        
        .button {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #666699; 
            color: white;
            border-radius: 5px;
            margin-top: 24px;
            margin-left: 40%;
        }
        
        .button:hover {
            background-color: #8533ff;
        }
        
        .button-add {
            margin-left: 0;
        }
        
        .txt-e, .txt-d {
            display: inline-block;
            padding: 3px 5px;
            border-radius: 5px;
            background-color: #f2f2f2;
            text-decoration: none;
            color: black;
        }
        
        .txt-e:hover {
            background-color: #2f9ff5;
            color: #f2f2f2;
        }
        
        .txt-d:hover {
            background-color: #f53d3d;
            color: #f2f2f2;
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
    </style>
</head>
<body>
    <h1>Employee List</h1>
    
    <div class="employee-table">
        <div class="employee-row employee-header">
            <div class="employee-cell">Employee ID</div>
            <div class="employee-cell">Name</div>
            <div class="employee-cell">Salary</div>
            <div class="employee-cell">Designation</div>
            <div class="employee-cell">Date of Birth</div>
            <div class="employee-cell">Update</div>
            <div class="employee-cell">Delete</div>
        </div>
        
        <c:forEach var="emp" items="${employees}">
            <div class="employee-row">
                <div class="employee-cell">${emp.id}</div>
                <div class="employee-cell">${emp.name}</div>
                <div class="employee-cell">${emp.salary}</div>
                <div class="employee-cell">${emp.designation}</div>
                <div class="employee-cell">${emp.dob}</div>
                <div class="employee-cell"><a href="edit/${emp.id}" class="txt-e">Edit</a></div>
                <div class="employee-cell"><a href="delete/${emp.id }" class="txt-d">Delete</a></div>
            </div>
        </c:forEach>
    </div>
    <div>
    
    <c:forEach var="i" begin="1" end="${totalPages}">
        <c:choose>
            <c:when test="${i == currentPage}">
                <strong>${i}</strong>
            </c:when>
            <c:otherwise>
                <a href="employees?page=${i}" class="btnsm">${i}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
     <c:if test="${currentPage > 1}">
        <a href="employees?page=${currentPage - 1}" class="button1"><- Previous</a>
    </c:if>
     <c:if test="${currentPage < totalPages}">
        <a href="employees?page=${currentPage + 1}" class="button2">Next  -></a>
    </c:if>
    
</div>

    <a href="add" class="button button-add">Add New Employee</a><br>
    <a href="logout" class="button button-add">Logout</a><br>
    
    
</body>
</html>
