<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="com.med.Medicine" %>

<%
ArrayList<Medicine> medicines = new ArrayList<>();

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/med2025", "root", "root@123");

    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM medicine ORDER BY name ASC");

    while (rs.next()) {
        Medicine m = new Medicine(
            rs.getInt("id"),
            rs.getString("name"),
            rs.getString("company"),
            rs.getDouble("price"),
            rs.getInt("quantity"),
            rs.getDate("expiry")
        );
        medicines.add(m);
    }

    rs.close();
    stmt.close();
    conn.close();
} catch (Exception e) {
    out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>All Medicines</title>
    <link rel="stylesheet" href="./CSS/forViewAll.css">
</head>

<body>
    <h2>All Medicines</h2>

    <!-- Back Button -->
    <a href="dashboard.jsp" class="back-btn">← Back to Dashboard</a>

    <!-- Search Box -->
    <h3>Search Within Page</h3>
    <input type="text" id="pageSearch" class="search-box" placeholder="Type medicine name...">

    <!-- Medicines Table -->
    <table id="medicineTable">
        <tr>
            <th>S.No.</th>
            <th>Name</th>
            <th>Med_Id</th>
            <th>Company</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Expiry Date</th>
            <th>Update Stock</th>
        </tr>
        <%  
            java.util.Date today = new java.util.Date();
            int serialNo = 1;
            for (Medicine m : medicines) {
                boolean isExpired = m.expiry.before(today);
        %>
        <tr class="<%= isExpired ? "expired" : "" %>">
            <td><%= serialNo++ %></td>
            <td><%= m.name %></td>
            <td><%= m.id %></td>
            <td><%= m.company %></td>
            <td><%= m.price %></td>
            <td><%= m.quantity %></td>
            <td><%= m.expiry %></td>
            <td><a class="update-btn" href="updateStock.jsp?id=<%= m.id %>">Update</a></td>
        </tr>
        <% } %>
    </table>

    <!-- Scripts -->
    <script src="./JS/filterRow.js"></script>
    <script src="./JS/highlightMed.js"></script>
</body>
</html>
