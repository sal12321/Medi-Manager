<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String name = "";
String company = "";
double price = 0.0;
int quantity = 0;
java.sql.Date expiry = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/med2025", "root", "root@123");

    PreparedStatement ps = conn.prepareStatement("SELECT * FROM medicine WHERE id = ?");
    ps.setInt(1, Integer.parseInt(id));
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        name = rs.getString("name");
        company = rs.getString("company");
        price = rs.getDouble("price");
        quantity = rs.getInt("quantity");
        expiry = rs.getDate("expiry");
    }

    rs.close();
    ps.close();
    conn.close();
} catch (Exception e) {
    out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Stock</title>
    <link rel = "stylesheet" href= "./CSS/forUpdateStock.css">
   
</head>
<body>
    <div class="container">
        <h2>Medicine Details</h2>
        <table class="info-table">
            <tr>
                <th>Name</th>
                <td><%= name %></td>
            </tr>
            <tr>
                <th>Med_Id</th>
                <td><%= id %></td>
            </tr>
            <tr>
                <th>Company</th>
                <td><%= company %></td>
            </tr>
            <tr>
                <th>Price</th>
                <td>₹<%= price %></td>
            </tr>
            <tr>
                <th>Quantity</th>
                <td><%= quantity %></td>
            </tr>
            <tr>
                <th>Expiry Date</th>
                <td><%= expiry %></td>
            </tr>
        </table>

        <div class="update-section">
            <h3>Update Stock</h3>
            <form action="updateStockProcess.jsp" method="post">
                <input type="hidden" name="id" value="<%= id %>">
                <div class="quantity-box">
                    <button type="button" onclick="changeQuantity(-1)"> − </button>
                    <input type="number" id="newQuantity" name="newQuantity" value="<%= quantity %>" required>
                    <button type="button" onclick="changeQuantity(1)">+</button>
                </div>
                <br>
                <button type="submit" class="update-btn">Update Quantity</button>
            </form>
        </div>
    </div>

    <script>
        function changeQuantity(amount) {
            let input = document.getElementById("newQuantity");
            let currentValue = parseInt(input.value) || 0;
            let newValue = currentValue + amount;
            if (newValue >= 0) { // Prevent negative stock
                input.value = newValue;
            }
        }
    </script>
</body>
</html>
