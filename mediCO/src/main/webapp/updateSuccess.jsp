<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Successful</title>
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
            color: #4CAF50;
            margin-bottom: 15px;
        }
        .message-box p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .btn {
            padding: 10px 20px;
            background: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 6px;
        }
        .btn:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
    <div class="message-box">
        <h2>✅ Medicine Updated Successfully!</h2>
        <p>The medicine details have been updated in the system.</p>
        <a href="view_all.jsp" class="btn">Back to Medicines</a>
    </div>
</body>
</html>
