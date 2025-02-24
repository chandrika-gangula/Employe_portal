<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar with Profile and Logout</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 10px 20px;
            color: white;
        }
        .nav-links {
            display: flex;
            gap: 20px;
        }
        .profile-menu {
            position: relative;
            display: inline-block;
        }
        .profile-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            cursor: pointer;
        }
        .dropdown {
            display: none;
            position: absolute;
            right: 0;
            background-color: white;
            box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
            border-radius: 5px;
            overflow: hidden;
            min-width: 120px;
        }
        .dropdown a {
            display: block;
            padding: 10px;
            color: black;
            text-decoration: none;
        }
        .dropdown a:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="logo">My Website</div>
        <div class="nav-links">
            <div class="profile-menu">
                <img src="profile-icon.png" alt="Profile" class="profile-icon" onclick="toggleDropdown()">
                <div class="dropdown" id="profileDropdown">
                    <a href="#">Profile</a>
                    <a href="#" onclick="logout()">Logout</a>
                </div>
            </div>
        </div>
    </nav>
    
    <script>
        function toggleDropdown() {
            document.getElementById("profileDropdown").style.display = 
                document.getElementById("profileDropdown").style.display === "block" ? "none" : "block";
        }
        
        function logout() {
            alert("Logging out...");
            // Redirect to logout page or handle logout logic
        }
        
        document.addEventListener("click", function(event) {
            if (!event.target.closest(".profile-menu")) {
                document.getElementById("profileDropdown").style.display = "none";
            }
        });
    </script>
</body>
</html>