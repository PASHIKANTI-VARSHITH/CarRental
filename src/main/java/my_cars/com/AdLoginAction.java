package my_cars.com;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/admser")

public class AdLoginAction extends HttpServlet{
		
		protected void doPost(HttpServletRequest requ, HttpServletResponse resp) throws ServletException, IOException {
			String myemail=(String) requ.getParameter("email");
			String mypass=(String) requ.getParameter("password");
			PrintWriter out=resp.getWriter();
			
			if(myemail.equals("admin@gmail.com") && mypass.equals("admin123")) {
				RequestDispatcher rd=requ.getRequestDispatcher("/AdminProfilePage.jsp");
				rd.include(requ, resp);
			}
			else {
				resp.setContentType("text/html");
				out.print("<h3 style='color:red'> Email and password didnt matched </h3>");
				RequestDispatcher rd=requ.getRequestDispatcher("/AdminLoginPage.html");
				rd.include(requ, resp);
			}
		}
}
