/*
 * import jakarta.servlet.ServletException; import
 * jakarta.servlet.annotation.WebServlet; import
 * jakarta.servlet.http.HttpServlet; import
 * jakarta.servlet.http.HttpServletRequest; import
 * jakarta.servlet.http.HttpServletResponse;
 * 
 * import java.io.IOException; import java.sql.* ;
 * 
 * @WebServlet("/UpdateMedicineServlet") public class UpdateMedicineServlet
 * extends HttpServlet { private static final long serialVersionUID = 1L;
 * 
 * // Database connection details private static final String DB_URL =
 * "jdbc:mysql://localhost:3306/med2025"; private static final String DB_USER =
 * "root"; private static final String DB_PASS = "root@123";
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * 
 * String idStr = request.getParameter("id"); String name =
 * request.getParameter("name"); String priceStr =
 * request.getParameter("price"); String quantityStr =
 * request.getParameter("quantity");
 * 
 * if (idStr == null || idStr.trim().isEmpty()) {
 * response.getWriter().println("❌ Medicine ID is required."); return; }
 * 
 * try { Class.forName("com.mysql.cj.jdbc.Driver"); Connection conn =
 * DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
 * 
 * // Build dynamic SQL to update only the fields that are not empty
 * StringBuilder sql = new StringBuilder("UPDATE medicine SET "); boolean first
 * = true;
 * 
 * if (name != null && !name.trim().isEmpty()) { sql.append("name = ?"); first =
 * false; } if (priceStr != null && !priceStr.trim().isEmpty()) { if (!first)
 * sql.append(", "); sql.append("price = ?"); first = false; } if (quantityStr
 * != null && !quantityStr.trim().isEmpty()) { if (!first) sql.append(", ");
 * sql.append("quantity = ?"); }
 * 
 * sql.append(" WHERE id = ?");
 * 
 * PreparedStatement ps = conn.prepareStatement(sql.toString());
 * 
 * int paramIndex = 1; if (name != null && !name.trim().isEmpty()) {
 * ps.setString(paramIndex++, name); } if (priceStr != null &&
 * !priceStr.trim().isEmpty()) { ps.setDouble(paramIndex++,
 * Double.parseDouble(priceStr)); } if (quantityStr != null &&
 * !quantityStr.trim().isEmpty()) { ps.setInt(paramIndex++,
 * Integer.parseInt(quantityStr)); } ps.setInt(paramIndex,
 * Integer.parseInt(idStr));
 * 
 * int rows = ps.executeUpdate();
 * 
 * if (rows > 0) {
 * 
 * response.sendRedirect("updateSuccess.jsp"); } else {
 * response.sendRedirect("updateFail.jsp");
 * 
 * }
 * 
 * ps.close(); conn.close(); } catch (Exception e) { e.printStackTrace();
 * response.getWriter().println("❌ Error updating medicine: " + e.getMessage());
 * } } }
 */






import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

@WebServlet("/UpdateMedicineServlet")
public class UpdateMedicineServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DB_URL = "jdbc:mysql://localhost:3306/med2025";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "root@123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idStr = request.getParameter("id");
        String name = request.getParameter("name");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");
        String expiryDate = request.getParameter("expiryDate");
        String companyName = request.getParameter("companyName");

        if (idStr == null || idStr.trim().isEmpty()) {
            response.getWriter().println("❌ Medicine ID is required.");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            // Build dynamic SQL
            StringBuilder sql = new StringBuilder("UPDATE medicine SET ");
            boolean first = true;

            if (name != null && !name.trim().isEmpty()) {
                sql.append("name = ?");
                first = false;
            }
            if (priceStr != null && !priceStr.trim().isEmpty()) {
                if (!first) sql.append(", ");
                sql.append("price = ?");
                first = false;
            }
            if (quantityStr != null && !quantityStr.trim().isEmpty()) {
                if (!first) sql.append(", ");
                sql.append("quantity = ?");
                first = false;
            }
            if (expiryDate != null && !expiryDate.trim().isEmpty()) {
                if (!first) sql.append(", ");
                sql.append("expiry_date = ?");
                first = false;
            }
            if (companyName != null && !companyName.trim().isEmpty()) {
                if (!first) sql.append(", ");
                sql.append("company_name = ?");
            }

            sql.append(" WHERE id = ?");

            PreparedStatement ps = conn.prepareStatement(sql.toString());

            // Setting parameters dynamically
            int paramIndex = 1;
            if (name != null && !name.trim().isEmpty()) {
                ps.setString(paramIndex++, name);
            }
            if (priceStr != null && !priceStr.trim().isEmpty()) {
                ps.setDouble(paramIndex++, Double.parseDouble(priceStr));
            }
            if (quantityStr != null && !quantityStr.trim().isEmpty()) {
                ps.setInt(paramIndex++, Integer.parseInt(quantityStr));
            }
            if (expiryDate != null && !expiryDate.trim().isEmpty()) {
                ps.setString(paramIndex++, expiryDate);
            }
            if (companyName != null && !companyName.trim().isEmpty()) {
                ps.setString(paramIndex++, companyName);
            }

            ps.setInt(paramIndex, Integer.parseInt(idStr));

            int rows = ps.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("updateSuccess.jsp");
            } else {
                response.sendRedirect("updateFail.jsp");
            }

            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("❌ Error updating medicine: " + e.getMessage());
        }
    }
}
