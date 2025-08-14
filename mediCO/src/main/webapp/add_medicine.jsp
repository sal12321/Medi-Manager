
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Medicine</title>
    <link rel="stylesheet" href="./CSS/forAddMed.css">
   
</head>
<body>

<%
    boolean inserted = false;
    boolean error = false;

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String company = request.getParameter("company");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");
        String expiry = request.getParameter("expiry");

        try {
            double price = Double.parseDouble(priceStr);
            int quantity = Integer.parseInt(quantityStr);

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/med2025", "root", "root@123"
            );

            String sql = "INSERT INTO medicine (name, company, price, quantity, expiry) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, company);
            stmt.setDouble(3, price);
            stmt.setInt(4, quantity);
            stmt.setDate(5, java.sql.Date.valueOf(expiry));

            int rows = stmt.executeUpdate();

            if (rows > 0) inserted = true;

            stmt.close();
            conn.close();
        } catch (Exception e) {
            error = true;
        }
    }
%>

<div class="container">
    <h2>Add New Medicine</h2>

    <% if (inserted) { %>
        <div class="success-box" style =  "margin : 10px;">
            ✅ Medicine added successfully!
        </div>
        <form action="add_medicine.jsp" method="get">
            <button type="submit">➕ Add More Medicine</button>
        </form>
        <a class="back" href="dashboard.jsp" style = "  color: #2a9d8f;
            text-decoration: none;">← Back to Dashboard</a>
    <% } else if (error) { %>
        <div class="error-box">
            ❌ Error occurred while adding medicine. Please try again.
        </div>
    <% } %>

    <% if (!inserted) { %>
        <form action="add_medicine.jsp" method="post">
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
        <a class="back" href="dashboard.jsp">← Back to Dashboard</a>
    <% } %>
</div>

</body>
</html>
 