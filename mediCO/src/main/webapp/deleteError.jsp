<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Operation Failed</title>
    <link rel="stylesheet" href="./CSS/common.css">
    <style>
        .message-box {
            max-width: 500px;
            margin: 80px auto;
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            background-color: #ffe6e6;
            border: 2px solid #d9534f;
            box-shadow: 0 4px 8px rgba(0,0,0,0.15);
        }
        .message-box h2 {
            color: #b52b27;
            margin-bottom: 10px;
        }
        .message-box p {
            font-size: 1.1em;
            color: #444;
            margin-bottom: 20px;
        }
        .message-box a {
            display: inline-block;
            background-color: #b52b27;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 6px;
            transition: background 0.2s ease;
        }
        .message-box a:hover {
            background-color: #94221e;
        }
    </style>
</head>
<body>

<div class="message-box">
    <h2>✖ Error</h2>
    <p>Something went wrong. Please try again.</p>
    <a href="view_all.jsp">Back to Medicines List</a>
</div>

</body>
</html>
