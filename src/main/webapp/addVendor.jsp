<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Vendor</title>

    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap');

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

        /* Container for the add vendor form */
        .vendor-container {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            width: 400px;
            text-align: center;
            animation: fadeIn 0.8s ease-in;
        }

        /* Animation for fading in */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px;
            padding-left: 40px; /* Add padding for icons */
        }

        /* Submit button styling */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.2s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
            transform: scale(1.05);
        }

        /* Add icon inside input fields */
        .icon-input {
            position: relative;
        }

        .icon-input i {
            position: absolute;
            left: 12px;
            top: 14px;
            color: #888;
        }

        /* Vendor Input Fields with Icons */
        input[type="text"], input[type="email"] {
            padding-left: 40px; /* Add padding for icons */
        }
    </style>
</head>
<body>
    <div class="vendor-container">
        <h2>Add Vendor</h2>
        <form action="AddVendorServlet" method="post">
            <!-- Vendor Name Field -->
            <div class="icon-input">
                <i class="fas fa-user"></i>
                <input type="text" name="vendorName" placeholder="Vendor Name" required>
            </div>
            <!-- Vendor Email Field -->
            <div class="icon-input">
                <i class="fas fa-envelope"></i>
                <input type="email" name="vendorEmail" placeholder="Vendor Email" required>
            </div>
            <!-- Vendor Phone Field -->
            <div class="icon-input">
                <i class="fas fa-phone"></i>
                <input type="text" name="vendorPhone" placeholder="Vendor Phone" required>
            </div>
            <!-- Submit Button -->
            <input type="submit" value="Add Vendor">
        </form>
    </div>
</body>
</html>
