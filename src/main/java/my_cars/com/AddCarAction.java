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

@WebServlet("/addcarform")
public class AddCarAction extends HttpServlet{

			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				PrintWriter out=response.getWriter();
				
				String carname=request.getParameter("carname");
				String carmodel=request.getParameter("carmodel");
				String fuel=request.getParameter("fuel");
				String price=request.getParameter("price");
				String carnumber=request.getParameter("carnumber");
				String active=request.getParameter("active");
				
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycars","root","123456");
					PreparedStatement pd=con.prepareStatement("insert into carsdetails values(?,?,?,?,?,?)");
					pd.setString(1,carname);
					pd.setString(2,carmodel);
					pd.setString(3,fuel);
					pd.setString(4,price);
					pd.setString(5,carnumber);
					pd.setString(6,active);
					
					int count=pd.executeUpdate();
					if(count>0) {
						response.setContentType("text/html");
						out.print("<h3 style='color:green'>car added successfully</h3>");
						RequestDispatcher rg=request.getRequestDispatcher("/AdminProfilePage.jsp");
						rg.include(request, response);
					}
					else {
						response.setContentType("text/html");
						out.print("<h3 style='color:red'>car not added due to some errors !!</h3>");
						RequestDispatcher rg=request.getRequestDispatcher("/AddCars.jsp");
						rg.include(request, response);
					}
				}
				catch(Exception e) {
					e.printStackTrace();
					
					response.setContentType("text/html");
					out.print("<h3 style='color:red'>"+e.getMessage()+"</h3>");
					RequestDispatcher rg=request.getRequestDispatcher("/AddCars.jsp");
					rg.include(request, response);
					
				}
			}
}
