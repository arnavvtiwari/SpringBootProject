<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee Details</title>
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
    <form action="save" method="post" class="needs-validation bg-#c2c2d6" novalidate>
      <div class="form-group">
        <label for="name" class="form-label">Name</label>
        <input name="name" type="text" class="form-control w-75" id="name" required>
        <div class="invalid-feedback">Please enter the name.</div>
      </div>
      <div class="form-group">
        <label for="salary" class="form-label">Salary</label>
        <input name="salary" type="text" class="form-control w-75" id="salary" required>
        <div class="invalid-feedback">Please enter the salary.</div>
      </div>
      <div class="form-group">
        <label for="designation" class="form-label">Designation</label>
        <input name="designation" type="text" class="form-control w-75" id="designation" required>
        <div class="invalid-feedback">Please enter the designation.</div>
      </div>
      <div class="form-group">
        <label for="dob" class="form-label">Date of Birth</label>
        <input name="dob" type="text" class="form-control w-75" id="dob" placeholder="dd/mm/yyyy" required>
        <div class="invalid-feedback">Please enter the date of birth.</div>
      </div>
      <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
    <a href="home" class="btn ">Home</a>
  </div>

</body>
</html>
