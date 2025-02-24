<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.Employee" %>
<%
    // Retrieve the employee object set by the UpdateController servlet.
    Employee emp = (Employee) request.getAttribute("employe");
    if(emp == null) {
        // Redirect if employee is not available.
        response.sendRedirect("ListofEmp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #fff0f5; /* Lavender Blush background */
            font-family: 'Comic Sans MS', cursive, sans-serif; /* Friendly font */
        }
        .form-container {
            background-color: #f0f8ff; /* Alice Blue background */
            border: 2px solid #db7093; /* Pale Violet Red border */
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 0 15px rgba(219, 112, 147, 0.5); /* Pale Violet Red shadow */
            max-width: 500px;
            margin: auto;
        }
        .btn-custom {
            background-color: #db7093; /* Pale Violet Red button */
            color: white;
        }
        .btn-custom:hover {
            background-color: #c71585; /* Medium Violet Red on hover */
        }
        h1 {
            color: #db7093; /* Pale Violet Red text */
            font-size: 2.5rem;
        }
        label {
            color: #8b0000; /* Dark Red text */
        }
        .input-group-text {
            background-color: transparent;
            border: none;
        }
        .eye-icon {
            cursor: pointer;
            color: #db7093; /* Pale Violet Red */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Edit Employee</h1>
    <div class="form-container">
        <form action="updateEmployee" method="post">
            <!-- Hidden field to store employee ID -->
            <input type="hidden" name="id" value="<%= emp.getEid() %>">
            
            <div class="form-group">
                <label for="ename">Name:</label>
                <input type="text" class="form-control" id="ename" name="ename" 
                       value="<%= emp.getEname() %>" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" 
                       value="<%= emp.getEmail() %>" required>
            </div>
            <div class="form-group">
                <label for="pword">Password:</label>
                <div class="input-group">
                    <input type="password" class="form-control" id="pword" name="pword" 
                           value="<%= emp.getPword() %>" required>
                    <div class="input-group-append">
                        <span class="input-group-text">
                            <i class="eye-icon" id="togglePassword">&#128065;</i> <!-- Unicode for eye icon -->
                        </span>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-custom btn-block">Update Employee</button>
        </form>
    </div>
</div>
<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Custom JS for toggling password visibility -->
<script>
    document.getElementById('togglePassword').addEventListener('click', function () {
        const passwordField = document.getElementById('pword');
        const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordField.setAttribute('type', type);
        // Toggle the eye icon
        this.textContent = type === 'password' ? '\u{1F441}' : '\u{1F441}\u{200D}\u{1F5E8}';
    });
</script>
</body>
</html>
