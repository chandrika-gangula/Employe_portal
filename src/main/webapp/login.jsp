<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
<!--     <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <meta charset="UTF-8"> -->
<!--     <title>Login Page</title> -->
<!--     <style> -->
<!-- /*         body { */ -->
<!-- /*             background-color: #e0f7fa; */ -->
<!-- /*             font-family: 'Arial', sans-serif; */ -->
<!-- /*         } */ -->
<!-- /*         .login-container { */ -->
<!-- /*             max-width: 400px; */ -->
<!-- /*             margin: 50px auto; */ -->
<!-- /*             background-color: #ffffff; */ -->
<!-- /*             padding: 30px; */ -->
<!-- /*             border-radius: 10px; */ -->
<!-- /*             box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15); */ -->
<!-- /*         } */ -->
<!-- /*         .login-container h2 { */ -->
<!-- /*             text-align: center; */ -->
<!-- /*             margin-bottom: 30px; */ -->
<!-- /*             color: #00796b; */ -->
<!-- /*         } */ -->
<!-- /*         .form-control { */ -->
<!-- /*             width: 100%; */ -->
<!-- /*             padding: 12px; */ -->
<!-- /*             border: 1px solid #00796b; */ -->
<!-- /*             border-radius: 8px; */ -->
<!-- /*             margin-bottom: 15px; */ -->
<!-- /*         } */ -->
<!-- /*         .btn-custom { */ -->
<!-- /*             width: 100%; */ -->
<!-- /*             padding: 12px; */ -->
<!-- /*             border-radius: 8px; */ -->
<!-- /*             background-color: #ff7043; */ -->
<!-- /*             color: white; */ -->
<!-- /*             border: none; */ -->
<!-- /*             font-size: 16px; */ -->
<!-- /*             cursor: pointer; */ -->
<!-- /*         } */ -->
<!-- /*         .btn-custom:hover { */ -->
<!-- /*             background-color: #e64a19; */ -->
<!-- /*         } */ -->
<!-- /*         .footer { */ -->
<!-- /*             text-align: center; */ -->
<!-- /*             margin-top: 20px; */ -->
<!-- /*             color: #555; */ -->
<!-- /*         } */ -->
<!-- /*         a { */ -->
<!-- /*             color: #00796b; */ -->
<!-- /*             text-decoration: none; */ -->
<!-- /*         } */ -->
<!-- /*         a:hover { */ -->
<!-- /*             text-decoration: underline; */ -->
<!-- /*         } */ -->
<!--     </style> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="login-container"> -->
<!--     <h2>Login</h2> -->
<!--     <form name="Login page" method="post" action="Login"> -->
<!--         <div class="form-group"> -->
<!--             <input type="text" name="ename" id="ename" class="form-control" placeholder="Employee Username" required> -->
<!--         </div> -->
<!--         <div class="form-group"> -->
<!--             <input type="password" name="pword" id="pword" class="form-control" placeholder="Password" required> -->
<!--         </div> -->
<!--         <button type="submit" class="btn-custom">Submit</button> -->
<!--         <p style="text-align: center; margin-top: 15px;"> -->
<!--         If you Don't have an account? <a href="register.html">Register</a></p> -->
<!--     </form> -->
<!--     <div class="footer"> -->
<!--         <p>&copy; 2025 Your Company</p> -->
<!--     </div> -->
<!-- </div> -->

<!-- </body> -->
<!-- </html> -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>

    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        /* Updated Background Styling */
        body {
            background: linear-gradient(135deg, #FFDEE9, #B5FFFC);
            font-family: 'Arial', sans-serif;
        }

        /* Login Box */
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #FFF5F7;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #FF4081;
            font-family: 'Montserrat', sans-serif;
        }

        /* Form Group */
        .form-group {
            position: relative;
            margin-bottom: 15px;
        }

        /* Input Fields */
        .form-control {
            width: 100%;
            padding: 12px 40px; /* Adjusted for proper padding */
            border: 1px solid #FF4081;
            border-radius: 20px;
            box-sizing: border-box; /* Prevents overflow */
            transition: border 0.3s ease;
        }

        .form-control:focus {
            border-color: #FF4081;
            box-shadow: 0 0 5px rgba(255, 64, 129, 0.6);
        }

        /* Icons inside Input Fields */
        .form-group i {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: #FF4081;
            font-size: 16px;
        }

        /* Submit Button */
        .btn-custom {
            width: 100%;
            padding: 12px;
            border-radius: 20px;
            background-color: #FF4081;
            color: white;
            border: none;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-custom:hover {
            background-color: #FF80AB;
            transform: scale(1.05);
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #666;
            font-size: 14px;
        }

        /* Links */
        a {
            color: #FF4081;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login</h2>
    <form name="Login page" method="post" action="Login">
        <!-- Username Field -->
        <div class="form-group">
            <i class="fa fa-user"></i>
            <input type="text" name="ename" id="ename" class="form-control" placeholder="Employee Username" required>
        </div>

        <!-- Password Field -->
        <div class="form-group">
            <i class="fa fa-lock"></i>
            <input type="password" name="pword" id="pword" class="form-control" placeholder="Password" required>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn-custom">Submit</button>

        <!-- Register Link -->
        <p style="text-align: center; margin-top: 15px;">
            If you don't have an account? <a href="register.html">Register</a>
        </p>
    </form>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Your Company | All Rights Reserved</p>
    </div>
</div>

</body>
</html>




    
