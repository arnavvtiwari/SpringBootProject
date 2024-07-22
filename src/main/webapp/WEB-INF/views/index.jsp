<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  body {
            display: flex;
            justify-content: center;
            /* align-items: center; */
            height: 100%;
            margin-top: 80px;
            font-family: Arial, sans-serif;
            background-color: #666699;
        }
  .center-form {
    	background-color: #c2c2d6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
  }
</style>
</head>
<body>
  <div class="center-form">
  	<h1>Log In</h1>
    <form action="login" method="post" class="needs-validation bg-#c2c2d6" novalidate>
      <div class="form-group">
        <label for="name" class="form-label">Employee ID</label>
        <input name="id" type="text" class="form-control w-75" id="id" required>
        <div class="invalid-feedback">Please enter the E ID.</div>
      </div>
      <div class="form-group">
        <label for="password" class="form-label mt-3">Password</label>
        <input name="password" type="password" class="form-control w-75" id="password" required>
        <div class="invalid-feedback">Please enter the password.</div>
      </div>
      <button type="submit" class="btn btn-primary mt-3">Login</button>
      <div class="form-group">
        <a href="employees" class="btn btn-secondary mt-3 ml-auto d-block">Home</a>
    </div>
    </form>
    
  </div>

</body>
</html>
