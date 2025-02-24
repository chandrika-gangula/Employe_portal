<%@ page import="com.model.Employee" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        /* ✨ Beautiful Animated Gradient Background */
        body {
            background: linear-gradient(135deg, #ff9a9e, #fad0c4, #ffdde1, #fc6076, #ff9a44);
            background-size: 500% 500%;
            animation: gradientBG 10s infinite alternate;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Poppins', sans-serif;
        }

        /* 🎨 Background Animation */
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            100% { background-position: 100% 50%; }
        }

        /* 💖 Stylish Profile Card */
        .card {
            width: 450px;
            border-radius: 15px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
            background: white;
            overflow: hidden;
            position: relative;
            transform: translateY(-100%);
            animation: slideDown 0.8s ease-out forwards;
            padding: 20px;
        }

        /* 📉 Card Slide Down Animation */
        @keyframes slideDown {
            from { transform: translateY(-100%); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        /* 🌸 Profile Image */
        .profile-pic {
            width: 130px;
            height: 130px;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid white;
            margin-top: -70px;
            transition: transform 0.3s ease-in-out;
        }

        /* 🎭 Profile Picture Hover Effect */
        .profile-pic:hover {
            transform: scale(1.1);
        }

        /* 📌 Card Styling */
        .card-body {
            text-align: center;
            padding: 25px;
        }

        /* 🎀 Stylish Buttons */
        .btn-custom {
            width: 100%;
            border-radius: 10px;
            font-size: 17px;
            font-weight: bold;
            padding: 12px;
            transition: all 0.3s ease-in-out;
            margin-top: 10px;
        }

        /* 🎭 Button Hover Effects */
        .btn-primary:hover {
            background: #fc6076;
            border: none;
        }

        .btn-secondary:hover {
            background: #6c757d;
            border: none;
        }

        /* 📝 Info Section */
        .info {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #f8f9fa;
            padding: 12px;
            margin-bottom: 12px;
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
        }

        .info:hover {
            background: #e9ecef;
        }

        .info i {
            font-size: 22px;
            color: #fc6076;
        }

        .info p {
            margin: 0;
            font-size: 17px;
            font-weight: 500;
            color: #444;
            flex-grow: 1;
            text-align: left;
        }

        /* 👀 Eye Icon for Password */
        .password-toggle {
            cursor: pointer;
            color: #fc6076;
        }

        .password-toggle:hover {
            color: #ff3b60;
        }
    </style>
</head>
<body>

<%
    Employee emp = (Employee) request.getAttribute("employee");
%>

<div class="card text-center p-4">
    <!-- 🎭 Profile Picture -->
    <img src="https://via.placeholder.com/130" class="profile-pic mx-auto" alt="Profile Picture">

    <div class="card-body">
        <h3><i class="fas fa-user-circle"></i> <%= emp.getEname() %></h3>

        <!-- 🆔 Employee ID -->
        <div class="info">
            <i class="fas fa-id-badge"></i>
            <p>ID: <%= emp.getEid() %></p>
        </div>

        <!-- ✉ Email -->
        <div class="info">
            <i class="fas fa-envelope"></i>
            <p>Email: <%= emp.getEmail() %></p>
        </div>

        <!-- 🔑 Password with Toggle Icon -->
        <div class="info">
            <i class="fas fa-key"></i>
            <p id="password">••••••••</p>
            <i class="fas fa-eye password-toggle" id="togglePassword"></i>
        </div>

        <!-- 🖊 Buttons -->
        <a href="getuserdetailsforedit" class="btn btn-primary btn-custom"><i class="fas fa-edit"></i> Edit Profile</a>
        <a href="ListofEmp" class="btn btn-secondary btn-custom"><i class="fas fa-arrow-left"></i> Back</a>
    </div>
</div>

<!-- 📝 JavaScript for Show/Hide Password -->
<script>
    document.getElementById("togglePassword").addEventListener("click", function() {
        let passwordField = document.getElementById("password");
        if (passwordField.innerText === "••••••••") {
            passwordField.innerText = "<%= emp.getPword() %>";
            this.classList.remove("fa-eye");
            this.classList.add("fa-eye-slash");
        } else {
            passwordField.innerText = "••••••••";
            this.classList.remove("fa-eye-slash");
            this.classList.add("fa-eye");
        }
    });
</script>

</body>
</html>
