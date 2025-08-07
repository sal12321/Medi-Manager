<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Medicine</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f7fa;
            padding: 40px;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        h2 {
            color: #2a9d8f;
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
        }

        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button {
            background-color: #2a9d8f;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        button:hover {
            background-color: #21867a;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #555;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Add New Medicine</h2>
        <form action="AddMedicineServlet" method="post">
            <label for="name">Medicine Name:</label>
            <input type="text" name="name" id="name" required>

            <label for="company">Company:</label>
            <input type="text" name="company" id="company" required>

            <label for="price">Price (₹):</label>
            <input type="number" name="price" id="price" step="0.01" required>

            <label for="quantity">Quantity:</label>
            <input type="number" name="quantity" id="quantity" required>

            <label for="expiry">Expiry Date:</label>
            <input type="date" name="expiry" id="expiry" required>

            <button type="submit">Add Medicine</button>
        </form>

        <a class="back" href="dashboard.html">← Back to Dashboard</a>
    </div>

</body>
</html>
