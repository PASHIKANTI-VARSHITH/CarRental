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

@WebServlet("/EditCarForm")
public class EditCarAction extends HttpServlet{
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				PrintWriter out=response.getWriter();
				
				String price=request.getParameter("price");
				String carnumber=request.getParameter("carnumber");
				String active=request.getParameter("active");
				
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycars","root","123456");
					PreparedStatement upd=con.prepareStatement("update carsdetails set price=?,active=? where carnumber=?");
					upd.setString(1,price);
					upd.setString(2,active);
					upd.setString(3,carnumber);
					
					int count=upd.executeUpdate();
					if(count>0) {
						response.setContentType("text/html");
						out.print("<h3 style='color:green'>car edited successfully</h3>");
						RequestDispatcher rg=request.getRequestDispatcher("/AdminProfilePage.jsp");
						rg.include(request, response);
					}
					else {
						response.setContentType("text/html");
						out.print("<h3 style='color:red'>car not edited due to some errors !!</h3>");
						RequestDispatcher rg=request.getRequestDispatcher("/EditCarForm.jsp");
						rg.include(request, response);
					}
				}
				catch(Exception e) {
					e.printStackTrace();
					
					response.setContentType("text/html");
					out.print("<h3 style='color:red'>"+e.getMessage()+"</h3>");
					RequestDispatcher rg=request.getRequestDispatcher("/EditCarForm.jsp");
					rg.include(request, response);
					
				}
			}
}

