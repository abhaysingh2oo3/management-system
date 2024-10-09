package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import db.ConnectionManager;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   try {
	   PrintWriter out=response.getWriter();
	   response.setContentType("text/html");
	   
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/local instance2","root","root");
	String n= request.getParameter("Username");
	String p= request.getParameter("Password");
	PreparedStatement ps=con.prepareStatement("select username from login where username=? and password=?");
	ps.setString(1, n);
	ps.setString(2, p);
	ResultSet rs= ps.executeQuery();
	if(rs.next()) {
		RequestDispatcher rd=request.getRequestDispatcher("User-dashboard.jsp");
		rd.forward(request, response);
	}
	else {
		out.println("<font color=red size=18>login Failed!!<br>");
		out.println("<a href=login.jsp> Try AGAIN!!</a>");
	}
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
};
    }
}
