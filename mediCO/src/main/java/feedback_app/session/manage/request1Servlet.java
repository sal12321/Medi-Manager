package feedback_app.session.manage ;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/servlet1")
public class request1Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/// we have to create cookie and save then send as a response
		
		String userName =  "aaqib";
		String useId  = "123" ;
		Cookie cookie = new Cookie("username" , userName  ) ;
		cookie.setMaxAge(60*10); // THIS IS 10 MINUTES.... 
		resp.addCookie(cookie);
		
	}
	
	
}




