<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Failed</title>
    <link rel="stylesheet" href="./CSS/common.css">
    <style>
        .message-box {
            max-width: 500px;
            margin: 80px auto;
            background: #ffffff;
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .message-box h2 {
            color: #f44336;
            margin-bottom: 15px;
        }
        .message-box p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .btn {
            padding: 10px 20px;
            background: #f44336;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
        }
        .btn:hover {
            background: #e53935;
        }
    </style>
</head>
<body>
    <div class="message-box">
        <h2>❌ Update Failed</h2>
        <p>There was an issue updating the medicine details. Please try again.</p>
        <a href="update_medicine.jsp" class="btn">Try Again</a>
    </div>
</body>
</html>
