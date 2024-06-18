package my_cars.com;

import java.sql.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/regform")
public class CustRegistrationaction extends HttpServlet{
	        
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
			
			String cname=request.getParameter("cname");
			String cemail=request.getParameter("cemail");
			String cmobilenumber=request.getParameter("cmobilenumber");
			String cpassword=request.getParameter("cpassword");
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycars","root","123456");
				PreparedStatement ps=con.prepareStatement("insert into customerdetails values(?,?,?,?)");
				ps.setString(1,cname);
				ps.setString(2,cemail);
				ps.setString(3,cmobilenumber);
				ps.setString(4,cpassword);
				
				int count=ps.executeUpdate();
				if(count>0) {
					response.setContentType("text/html");
					out.print("<h3 style='color:green'>User registered successfully</h3>");
					RequestDispatcher rd=request.getRequestDispatcher("/CustomerLoginPage.jsp");
					rd.include(request, response);
				}
				else {
					response.setContentType("text/html");
					out.print("<h3 style='color:red'>User registered due to some errors !!</h3>");
					RequestDispatcher rd=request.getRequestDispatcher("/CustomerRegistrationPage.jsp");
					rd.include(request, response);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
				
				response.setContentType("text/html");
				out.print("<h3 style='color:red'>"+e.getMessage()+"</h3>");
				RequestDispatcher rd=request.getRequestDispatcher("/CustomerRegistrationPage.jsp");
				rd.include(request, response);
				
			}
		}


}
