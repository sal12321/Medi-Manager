<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Medicine</title>
   	<link rel="stylesheet" href="./CSS/forDelete.css">

    <style>
        
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
        <a href="dashboard.jsp">← Back to Dashboard</a>
    </div>

</body>
</html>
