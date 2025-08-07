package feedback_app.session.manage;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/servlet2")
public class request2Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		var writer = resp.getWriter();
		var flag = false ;
		
		Cookie[] coockies = req.getCookies();
		if(coockies != null ) {
			
			for(Cookie c : coockies) {
//				System.out.println();
				String username  = c.getName();
				if(username.equals("username")) {
					System.out.println("USERNAME : " + c.getValue());
					writer.println("""
							
						<h1> Welcome : %s </h1>
			
							
							
							
							
							
							""".formatted(c.getValue()));
					flag = true;
					break;
					
				}
				
				
				
				
			}
			
			if (flag) {
writer.println("""
						
						
						
						<h2>User is found in cookie </h2>
						
						""");
				
				
				
			}
			else {
						writer.println("""
						
						
						
						<h2>No username is found in cookie </h2>
						
						""");
			}
			
		}
	
		
	}
	

}
