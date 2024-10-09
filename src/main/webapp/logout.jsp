<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
    <style>
        /* Basic styling for body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container for logout message */
        .logout-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* Heading styling */
        h2 {
            color: #333;
        }

        /* Logout message styling */
        p {
            color: #555;
            margin-bottom: 20px;
        }

        /* Button styling */
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        /* Hover effect for button */
        .button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        // Redirects to the login page after a delay
        function redirectToLogin() {
            setTimeout(() => {
                window.location.href = 'login.jsp'; // Redirect to the login page
            }, 3000); // Redirect after 3 seconds
        }
    </script>
</head>
<body onload="redirectToLogin()">
    <div class="logout-container">
        <h2>You have been logged out</h2>
        <p>Thank you for using our service. You will be redirected to the login page shortly.</p>
        <button class="button" onclick="window.location.href='login.jsp'">Go to Login Now</button>
    </div>
</body>
</html>
