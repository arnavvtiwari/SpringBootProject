<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            justify-content: center;
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
        <h1 class="mb-4">Edit Employee</h1>
        <form action="../update" method="post" class="needs-validation" novalidate>
            <input type="hidden" id="id" name="id" value="${employee.id}">
            <div class="form-group mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" id="name" name="name" class="form-control w-75" value="${employee.name}" required>
                <div class="invalid-feedback">Please enter the name.</div>
            </div>
            <div class="form-group">
        <label for="password" class="form-label">Password</label>
        <input name="password" type="password" class="form-control w-75" value="${employee.password}" required>
        <div class="invalid-feedback">Please enter the password.</div>
      </div>
            <div class="form-group mb-3">
                <label for="salary" class="form-label">Salary</label>
                <input type="number" id="salary" name="salary" class="form-control w-75" value="${employee.salary}" required>
                <div class="invalid-feedback">Please enter the salary.</div>
            </div>
            <div class="form-group mb-3">
                <label for="designation" class="form-label">Designation</label>
                <input type="text" id="designation" name="designation" class="form-control w-75" value="${employee.designation}" required>
                <div class="invalid-feedback">Please enter the designation.</div>
            </div>
            <div class="form-group mb-3">
                <label for="dob" class="form-label">Date of Birth</label>
                <input type="text" id="dob" name="dob" class="form-control w-75" value="${employee.dob}" required>
                <div class="invalid-feedback">Please enter the date of birth.</div>
            </div>
            <button type="submit" class="btn btn-primary mt-3">Update</button>
        </form>
        <a href="/employees" class="btn btn-secondary mt-3">Home</a>
    </div>
</body>
</html>
