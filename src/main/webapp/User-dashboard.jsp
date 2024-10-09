<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>

    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Google Font for modern look */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap');

        /* Styling for body */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container for the dashboard */
        .dashboard-container {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            position: relative;
            animation: slideIn 0.8s ease-out;
            transition: transform 0.3s ease, box-shadow 0.3s;
        }

        /* Hover effect for the container */
        .dashboard-container:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.3);
        }

        /* Animation for the container sliding in */
        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Gradient border for the container */
        .dashboard-container::before {
            content: '';
            position: absolute;
            top: -4px;
            left: -4px;
            right: -4px;
            bottom: -4px;
            border-radius: 12px;
            background: linear-gradient(45deg, #71b7e6, #9b59b6, #f39c12, #8e44ad);
            background-size: 400% 400%;
            z-index: -1;
            animation: gradient 8s ease infinite;
        }

        @keyframes gradient {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        /* Heading style */
        h2 {
            color: #333;
            font-size: 28px;
            margin-bottom: 10px;
        }

        /* Description text */
        p {
            color: #555;
            font-size: 16px;
            margin: 10px 0 20px 0;
        }

        /* Button styling */
        .button {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin: 15px 0;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.4s, transform 0.3s;
        }

        /* Hover effect for buttons */
        .button:hover {
            background-color: #45a049;
            transform: translateY(-3px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Icon styling for buttons */
        .button i {
            margin-right: 8px;
        }

        /* Logout button */
        .logout {
            background-color: #f44336;
            color: white;
        }

        .logout:hover {
            background-color: #d32f2f;
        }

    </style>

    <script>
        // Function to handle logout
        function handleLogout() {
            alert("Logging out...");
            window.location.href = 'logout.jsp'; // Redirect to logout page
        }

        // Function to redirect to add vendor page
        function redirectToAddVendor() {
            window.location.href = 'addVendor.jsp';
        }

        // Function to redirect to manage vendor page
        function redirectToManageVendor() {
            window.location.href = 'manageVendor.jsp';
        }

        // Function to change password
        function changePassword() {
            alert("Redirecting to change password page...");
            window.location.href = 'changePassword.jsp'; // Redirect to change password page
        }
    </script>
</head>
<body>
    <div class="dashboard-container">
        <h2>Welcome, User!</h2>
        <p>Manage your vendor details, payments, and settings from here.</p>
        
        <!-- Buttons for different actions with icons -->
        <button class="button" onclick="redirectToAddVendor()">
            <i class="fas fa-user-plus"></i> Add Vendor
        </button>
        <button class="button" onclick="redirectToManageVendor()">
            <i class="fas fa-edit"></i> Manage Vendors
        </button>
        <button class="button" onclick="changePassword()">
            <i class="fas fa-key"></i> Change Password
        </button>
        <button class="button logout" onclick="handleLogout()">
            <i class="fas fa-sign-out-alt"></i> Logout
        </button>
    </div>
</body>
</html>
