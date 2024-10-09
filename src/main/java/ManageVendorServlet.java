import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ManageVendorServlet")
public class ManageVendorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Simulated vendor data (in a real application, retrieve from database)
        List<Vendor> vendors = new ArrayList<>();
        vendors.add(new Vendor("Vendor 1", "vendor1@example.com", "123-456-7890"));
        vendors.add(new Vendor("Vendor 2", "vendor2@example.com", "123-456-7891"));

        // Set the vendor list in the request scope
        request.setAttribute("vendors", vendors);
        
        // Forward to manageVendor.jsp to display vendors
        request.getRequestDispatcher("manageVendor.jsp").forward(request, response);
    }

    // Simulated Vendor class
    public static class Vendor {
        private String name;
        private String email;
        private String phone;

        public Vendor(String name, String email, String phone) {
            this.name = name;
            this.email = email;
            this.phone = phone;
        }

        public String getName() {
            return name;
        }

        public String getEmail() {
            return email;
        }

        public String getPhone() {
            return phone;
        }
    }
}
