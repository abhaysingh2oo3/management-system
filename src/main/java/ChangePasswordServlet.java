import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Add logic to validate old password and change to new password
        // Dummy implementation here, in a real application you'd check the old password

        if (newPassword.equals(confirmPassword)) {
            // Logic to change password in the database (dummy implementation)
            response.sendRedirect("dashboard.jsp?message=Password changed successfully");
        } else {
            // Redirect back to change password page with error message
            response.sendRedirect("changePassword.jsp?error=Passwords do not match");
        }
    }
}
