<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Vendors</title>

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

        /* Container for the vendor management */
        .vendor-container {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            width: 500px;
            text-align: center;
            position: relative;
            animation: slideIn 0.8s ease-out;
        }

        /* Animation for sliding in */
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

        /* Heading styling */
        h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            font-size: 16px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-align: center;
        }

        td {
            text-align: center;
        }

        /* Button for actions (Delete) */
        .button {
            display: inline-flex;
            align-items: center;
            background-color: #f44336; /* Red for delete */
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        /* Hover effect for buttons */
        .button:hover {
            background-color: #e53935;
            transform: scale(1.05);
        }

        /* Add icons inside buttons */
        .button i {
            margin-right: 6px;
        }

        /* Responsive design */
        @media screen and (max-width: 600px) {
            .vendor-container {
                width: 90%;
            }
        }
    </style>

    <script>
        // JavaScript function to confirm delete action
        function confirmDelete(vendorName) {
            if (confirm(`Are you sure you want to delete ${vendorName}?`)) {
                // Add delete action logic here, such as sending a request to the server
                alert(`${vendorName} has been deleted.`);
            }
        }
    </script>
</head>
<body>
    <div class="vendor-container">
        <h2>Manage Vendors</h2>
        <table>
            <thead>
                <tr>
                    <th>Vendor Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example vendor data; replace with dynamic data from the database -->
                <tr>
                    <td>Vendor 1</td>
                    <td>vendor1@example.com</td>
                    <td>123-456-7890</td>
                    <td>
                        <button class="button" onclick="confirmDelete('Vendor 1')">
                            <i class="fas fa-trash-alt"></i> Delete
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Vendor 2</td>
                    <td>vendor2@example.com</td>
                    <td>123-456-7891</td>
                    <td>
                        <button class="button" onclick="confirmDelete('Vendor 2')">
                            <i class="fas fa-trash-alt"></i> Delete
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
