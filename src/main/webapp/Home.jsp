<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        /* Fix Navbar Overlap Issue */
        body {
            padding-top: 80px; /* Adjust based on navbar height */
            background: linear-gradient(45deg, #654ea3, #eaafc8);
            min-height: 100vh;
            margin: 0;
            font-family: 'Verdana', sans-serif;
        }
        /* Styled container */
        .container {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            border: 4px solid #654ea3;
            width: 85%;
            max-width: 950px;
        }
        h1, h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
            font-weight: bold;
        }
        .table {
            margin-top: 25px;
        }
        .table thead th {
            background-color: #654ea3;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f9f2ff;
        }
        .table tbody tr:hover {
            background-color: #e6d4ff;
        }
        /* Enhanced Buttons */
        .btn {
            border-radius: 30px;
            transition: all 0.3s;
            font-weight: bold;
            color: white;
            padding: 10px 20px;
            text-transform: uppercase;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            position: relative;
            overflow: hidden;
        }
        .btn::before {
            content: "";
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.2);
            transition: all 0.6s;
            transform: translate(-50%, -50%) scale(0);
            border-radius: 50%;
        }
        .btn:hover::before {
            transform: translate(-50%, -50%) scale(1);
        }
        .btn-warning {
            background: linear-gradient(45deg, #ff9800, #ff5722);
            border: none;
        }
        .btn-danger {
            background: linear-gradient(45deg, #e53935, #ff1744);
            border: none;
        }
        .btn-success {
            background: linear-gradient(45deg, #4caf50, #2e7d32);
            border: none;
        }
        .btn:hover {
            transform: scale(1.08);
        }
    </style>
</head>
<body>

    <!-- Include Navbar -->
    <jsp:include page="navbar.jsp"/>

    <div class="container">
        <h1>Employee Management</h1>
        <h2>Welcome <%= session.getAttribute("emp") %></h2>
        
        <div class="table-responsive">
            <% List<Employee> employees = (List<Employee>) request.getAttribute("allemp"); %>
            <% if (employees == null || employees.isEmpty()) { %>
                <div class="alert alert-warning text-center">No employees found!</div>
            <% } else { %>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Employee employee : employees) { %>
                    <tr>
                        <td><%= employee.getEid() %></td>    
                        <td><%= employee.getEname() %></td>
                        <td><%= employee.getEmail() %></td>
                        <td><%= employee.getPword() %></td>
                        <td>
                            <a href="update?id=<%= employee.getEid() %>" class="btn btn-success btn-sm">Update</a>
                            <a href="deletebyid?id=<%= employee.getEid() %>" 
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this employee?');">
                               Delete
                            </a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <% } %>
        </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body> 
</html>