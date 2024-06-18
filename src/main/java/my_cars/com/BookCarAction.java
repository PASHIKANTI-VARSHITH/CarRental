package my_cars.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bookcarform")
public class BookCarAction extends HttpServlet{
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        PrintWriter out = response.getWriter();

	        String carnumber = request.getParameter("carnumber");
	        String customerName = request.getParameter("customerName");
	        String customerEmail = request.getParameter("customerEmail");
	        String customerMobile = request.getParameter("customerMobile");
	        String dateNeeded = request.getParameter("dateNeeded");
	        String daysNeeded = request.getParameter("daysNeeded");

	       
	        try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mycars","root","123456");
				PreparedStatement ps=con.prepareStatement("insert into bookingdetail values(?,?,?,?,?,?)");
				ps.setString(1,carnumber);
				ps.setString(2,customerName);
				ps.setString(3,customerEmail);
				ps.setString(4,customerMobile);
				ps.setString(5,dateNeeded);
				ps.setString(6,daysNeeded);
				
				
				int count=ps.executeUpdate();
				if(count>0) {
					response.setContentType("text/html");
					out.print("<h3 style='color:green'>User Booked successfully</h3>");
					RequestDispatcher rd=request.getRequestDispatcher("/BookingConfirmation.jsp");
					rd.include(request, response);
				}
				else {
					response.setContentType("text/html");
					out.print("<h3 style='color:red'>User registered due to some errors !!</h3>");
				}
			}
			catch(Exception e) {
				e.printStackTrace();
				
				response.setContentType("text/html");
				out.print("<h3 style='color:red'>"+e.getMessage()+"</h3>");
				
			}
//
//	      	        out.println("<html><body>");
//        out.println("<h2>Booking Confirmation</h2>");
//	        out.println("<p>Car: " + carnumber + "</p>");
//        out.println("<p>Customer: " + customerName + "</p>");
//	        out.println("<p>Email: " + customerEmail + "</p>");
//	        out.println("<p>Mobile: " + customerMobile + "</p>");
//      out.println("<p>Date Needed: " + dateNeeded + "</p>");
//	        out.println("<p>Days Needed: " + daysNeeded + "</p>");
//	        out.println("</body></html>");
	    }

}
