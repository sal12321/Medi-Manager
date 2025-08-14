

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteMedicineServlet")
public class DeleteMedicineServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/med2025";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "root@123";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        if (idParam == null || idParam.trim().isEmpty()) {
            response.sendRedirect("deleteError.jsp?msg=Invalid+Medicine+ID");
            return;
        }

        try {
            int id = Integer.parseInt(idParam);

            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
                String sql = "DELETE FROM medicine WHERE id = ?";
                try (PreparedStatement ps = conn.prepareStatement(sql)) {
                    ps.setInt(1, id);
                    int rowsDeleted = ps.executeUpdate();

                    if (rowsDeleted > 0) {
                        // Success
                        response.sendRedirect("deleteSuccess.jsp?msg=Medicine+deleted+successfully");
                    } else {
                        // No record found
                        response.sendRedirect("deleteError.jsp?msg=No+medicine+found+with+given+ID");
                    }
                }
            }

        } catch (NumberFormatException e) {
            response.sendRedirect("deleteError.jsp?msg=Invalid+ID+format");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("deleteError.jsp?msg=Error+occurred");
        }
    }
}
