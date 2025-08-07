<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Medicine</title>
    <style>
        * {
            box-sizing: border-box;
            padding: 0;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f4f7fa;
            color: #333;
            padding: 40px;
        }

        h2 {
            text-align: center;
            color: #e63946;
            margin-bottom: 30px;
        }

        form {
            max-width: 500px;
            margin: auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #e63946;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #d62828;
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            color: #2a9d8f;
            text-decoration: none;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h2>Delete Medicine</h2>

    <form action="DeleteMedicineServlet" method="post">
        <label for="id">Medicine ID:</label>
        <input type="text" id="id" name="id" placeholder="Enter Medicine ID to delete" required>

        <button type="submit">Delete Medicine</button>
    </form>

    <div class="back-link">
        <a href="admin_dashboard.jsp">← Back to Dashboard</a>
    </div>

</body>
</html>
