<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vendor Management - Login</title>

    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
        /* Google Font for modern look */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap');

        /* Basic styling for body */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Container for the login form */
        .login-container {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
            position: relative;
            animation: slideIn 0.8s ease-out;
        }

        /* Animation for the form sliding in */
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

        /* Gradient border for the form */
        .login-container::before {
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
            margin-bottom: 20px;
            color: #333;
            font-weight: 500;
        }

        /* Input fields container */
        .input-container {
            position: relative;
            margin: 12px 0;
        }

        /* Input fields styling */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px 40px 12px 12px;
            margin: 0;
            border: 2px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            transition: 0.3s ease;
        }

        /* Focus state for input fields */
        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #9b59b6;
            box-shadow: 0 0 8px rgba(155, 89, 182, 0.6);
        }

        /* Icon styling inside input fields */
        .input-container i {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            color: #888;
        }

        /* Submit button styling */
        input[type="submit"] {
            background-color: #9b59b6;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.4s, transform 0.3s;
        }

        /* Hover effect for the submit button */
        input[type="submit"]:hover {
            background-color: #8e44ad;
            transform: translateY(-3px);
            box-shadow: 0 8px 16px rgba(142, 68, 173, 0.3);
        }

        /* Error message styling */
        p.error-message {
            color: red;
            margin-top: 10px;
        }

        /* Subtle fade-in animation for error messages */
        .error-message {
            animation: fadeIn 0.6s;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        /* Additional links (like "Forgot Password") */
        .forgot-password {
            margin-top: 10px;
            font-size: 14px;
        }

        .forgot-password a {
            color: #9b59b6;
            text-decoration: none;
            transition: color 0.3s;
        }

        .forgot-password a:hover {
            color: #8e44ad;
        }

        /* Icon for submit button */
        .login-btn-icon {
            margin-right: 10px;
        }
    </style>

    <script>
        // Simple JavaScript for form validation and redirection to dashboard
        function validateForm(event) {
            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;

            // Check if fields are empty
            if (username === "" || password === "") {
                alert("Username and Password are required.");
                event.preventDefault(); // Prevent form submission
            } else {
                // If valid, simulate a successful login and redirect to dashboard
                event.preventDefault(); // Stop the form from submitting traditionally
                alert("Login successful! Redirecting to Dashboard...");
                window.location.href = "User-dashboard.jsp"; // Redirect to dashboard page
            }
        }
    </script>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post" onsubmit="validateForm(event)">
            <div class="input-container">
                <input type="text" id="username" name="Username" placeholder="Username" required>
                <i class="fas fa-user"></i> <!-- Username Icon -->
            </div>

            <div class="input-container">
                <input type="password" id="password" name="Password" placeholder="Password" required>
                <i class="fas fa-lock"></i> <!-- Password Icon -->
            </div>

            <input type="submit" value="Login">
        </form>

        <!-- Display error message if login fails -->
        <c:if test="${not empty errorMessage}">
            <p class="error-message">${errorMessage}</p>
        </c:if>

        <!-- Forgot password link with icon -->
        <div class="forgot-password">
            <a href="#"><i class="fas fa-key"></i> Forgot your password?</a>
        </div>
    </div>
</body>
</html>
