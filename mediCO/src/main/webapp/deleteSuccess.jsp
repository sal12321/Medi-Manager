<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Operation Successful</title>
    <link rel="stylesheet" href="./CSS/common.css">
    <style>
        .message-box {
            max-width: 500px;
            margin: 80px auto;
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            background-color: #e6ffed;
            border: 2px solid #3bb54a;
            box-shadow: 0 4px 8px rgba(0,0,0,0.15);
        }
        .message-box h2 {
            color: #2b8a3e;
            margin-bottom: 10px;
        }
        .message-box p {
            font-size: 1.1em;
            color: #444;
            margin-bottom: 20px;
        }
        .message-box a {
            display: inline-block;
            background-color: #2b8a3e;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 6px;
            transition: background 0.2s ease;
        }
        .message-box a:hover {
            background-color: #237233;
        }
    </style>
</head>
<body>

<div class="message-box">
    <h2>✔ Success</h2>
    <p>Your changes have been saved successfully.</p>
    <a href="view_all.jsp">Back to Medicines List</a>
</div>

</body>
</html>
	