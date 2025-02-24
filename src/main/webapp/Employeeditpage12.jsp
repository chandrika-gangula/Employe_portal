<%@ page import="com.model.Employee" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    
    <style>
        /* 🌈 Beautiful Gradient Background */
        body {
            background: linear-gradient(135deg, #FFDEE9, #B5FFFC, #89BFFF, #EF96C5);
            background-size: 300% 300%;
            animation: gradientBG 8s infinite alternate-reverse;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Poppins', sans-serif;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            100% { background-position: 100% 50%; }
        }

        /* 📌 Form Card Styling */
        .card {
            width: 480px;
            border-radius: 15px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
            background: linear-gradient(135deg, #FFFFFF, #f8f8f8);
            padding: 30px;
            text-align: center;
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* 🎭 Profile Image */
        .profile-pic {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid white;
            margin-bottom: 15px;
            transition: transform 0.3s ease-in-out;
            background: linear-gradient(45deg, #FF758C, #FF7EB3);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .profile-pic:hover {
            transform: scale(1.1);
        }

        /* 📌 Input Fields */
        .input-group {
            margin-bottom: 15px;
        }

        .form-control {
            font-size: 16px;
            padding: 12px;
            border-radius: 8px;
            transition: 0.3s;
        }

        .form-control:focus {
            box-shadow: 0 0 10px rgba(255, 120, 150, 0.8);
            border-color: #FF758C;
        }

        .input-group-text {
            background: linear-gradient(135deg, #ff758c, #ff7eb3);
            color: white;
            border-radius: 8px 0 0 8px;
            padding: 12px 15px;
        }

        /* 🎀 Stylish Buttons */
        .btn-custom {
            width: 100%;
            border-radius: 10px;
            font-size: 18px;
            font-weight: bold;
            padding: 12px;
            transition: all 0.3s ease-in-out;
            margin-top: 12px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #ff758c, #ff7eb3);
            border: none;
        }

        .btn-primary:hover {
            background: linear-gradient(135deg, #ff5c7a, #ff6fa8);
        }

        .btn-secondary {
            background: linear-gradient(135deg, #6c757d, #8a94a3);
            border: none;
        }

        .btn-secondary:hover {
            background: linear-gradient(135deg, #545b62, #707a89);
        }

    </style>
</head>
<body>

<%
    Employee emp = (Employee) request.getAttribute("employee");
%>

<div class="card text-center">
    
    <!-- Profile Picture -->
    <div class="profile-pic mx-auto">
        <i class="fas fa-user fa-3x text-white"></i>
    </div>

    <h3 class="mb-3">Edit Your Profile</h3>

    <!-- 📝 Edit Form -->
    <form action="updateEmployee" method="post" onsubmit="return validateForm()">
        
        <!-- Hidden Employee ID -->
        <input type="hidden" name="eid" value="<%= emp.getEid() %>">

        <!-- Name -->
        <div class="input-group">
            <span class="input-group-text"><i class="fas fa-user"></i></span>
            <input type="text" class="form-control" name="ename" value="<%= emp.getEname() %>" required placeholder="Enter Your Name">
        </div>

        <!-- Email -->
        <div class="input-group">
            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
            <input type="email" class="form-control" name="email" value="<%= emp.getEmail() %>" required placeholder="Enter Your Email">
        </div>

        <!-- Password -->
        <div class="input-group">
            <span class="input-group-text"><i class="fas fa-lock"></i></span>
            <input type="password" class="form-control" name="pword" id="password" value="<%= emp.getPword() %>" required placeholder="Enter Your Password">
        </div>

        <!-- Buttons -->
        <button type="submit" class="btn btn-primary btn-custom"><i class="fas fa-save"></i> Update Profile</button>
        <a href="getuserdetails" class="btn btn-secondary btn-custom"><i class="fas fa-arrow-left"></i> Back</a>
    </form>
</div>

<!-- 📝 Form Validation -->
<script>
    function validateForm() {
        let name = document.getElementsByName("ename")[0].value;
        let email = document.getElementsByName("email")[0].value;
        let password = document.getElementsByName("pword")[0].value;

        if (name.trim() === "" || email.trim() === "" || password.trim() === "") {
            alert("⚠ Please fill out all fields!");
            return false;
        }
        return true;
    }
</script>

</body>
</html>
