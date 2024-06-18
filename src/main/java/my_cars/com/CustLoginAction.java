package my_cars.com;

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
import java.sql.ResultSet;

@WebServlet("/cloginform")
public class CustLoginAction extends HttpServlet{
			protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
				PrintWriter out=res.getWriter();
				String cemail=req.getParameter("cemail");
				String cpassword=req.getParameter("cpassword");
				
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycars","root","123456");
					PreparedStatement ps=con.prepareStatement("select * from customerdetails where cemail=? and cpassword=? ");
					ps.setString(1,cemail);
					ps.setString(2,cpassword);
					
					ResultSet rs=ps.executeQuery();
					if(rs.next()) {
						RequestDispatcher rd=req.getRequestDispatcher("/CustomerProfilePage.jsp");
						rd.include(req,res);
					}
					else {
						RequestDispatcher rd=req.getRequestDispatcher("/CustomerLoginPage.jsp");
						rd.include(req,res);
					}
				}
				catch(Exception e) {
					e.printStackTrace();
					RequestDispatcher rd=req.getRequestDispatcher("/CustomerLoginPage.jsp");
				}
			}
}
