<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String newQuantityStr = request.getParameter("newQuantity");

if (id != null && newQuantityStr != null) {
    try {
        int newQuantity = Integer.parseInt(newQuantityStr);

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/med2025", "root", "root@123");

        PreparedStatement ps = conn.prepareStatement(
            "UPDATE medicine SET quantity = ? WHERE id = ?");
        ps.setInt(1, newQuantity);
        ps.setInt(2, Integer.parseInt(id));

        int rowsUpdated = ps.executeUpdate();

        ps.close();
        conn.close();

        if (rowsUpdated > 0) {
            // Redirect to view_all with success message
            response.sendRedirect("view_all.jsp?msg=Stock updated successfully");
        } else {
            response.sendRedirect("view_all.jsp?msg=Failed to update stock");
        }

    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("view_all.jsp?msg=Error: " + e.getMessage());
    }
} else {
    response.sendRedirect("view_all.jsp?msg=Invalid input");
}
%>
