<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Medicine</title>
    <link rel= "stylesheet" href = "./CSS/forMedUpdate.css">
    <style>
        
    </style>
</head>
<body>

    <h2>Update Medicine Details</h2>

    <form action="UpdateMedicineServlet" method="post">

        <label for="id">Medicine ID:</label>
        <input type="text" id="id" name="id" placeholder="Enter Medicine ID" required>

        <label for="name">New Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter new medicine name">

        <label for="price">New Price:</label>
        <input type="number" id="price" name="price" placeholder="Enter new price" step="0.01">

        <label for="quantity">New Quantity:</label>
        <input type="number" id="quantity" name="quantity" placeholder="Enter new quantity">

        <button type="submit">Update Medicine</button>
    </form>

    <div class="back-link">
        <a href="dashboard.jsp">← Back to Dashboard</a>
    </div>

</body>
</html>
