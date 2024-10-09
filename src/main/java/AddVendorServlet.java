import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddVendorServlet")
public class AddVendorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String vendorName = request.getParameter("vendorName");
        String vendorEmail = request.getParameter("vendorEmail");
        String vendorPhone = request.getParameter("vendorPhone");

        // Logic to add vendor to database (dummy implementation here)
        // In a real application, you would perform database operations

        // Redirect back to the manage vendor page or show success message
        response.sendRedirect("manageVendor.jsp");
    }
}
