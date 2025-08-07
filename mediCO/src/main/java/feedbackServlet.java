import java.io.IOException;
import java.io.PrintWriter;
import java.sql.* ;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@WebServlet("/feedback") 
public class feedbackServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// in doPost method we can fetch the data from any form...
		// we can process it...
		// we can store it in Database using jdbc...
		// we can redirect the user to any other page...
		resp.setContentType("text/html") ;
		PrintWriter writer = resp.getWriter() ;
		
		writer.println("<h1>feedback servlet working</h1>") ;
		String userName = req.getParameter("name");
		String userEmail = req.getParameter("email");
		String userRating = req.getParameter("rating");
		String userMessage = req.getParameter("message");
		
		
		writer.println("""
				
				<h1>The information that you submitted are :</h1>
			<h2>%s</h2>
			<h2>%s</h2>
			<h2>%s</h2>
			<h2>%s</h2>
			
				
				
				
				
				 """.formatted(userName , userEmail , userRating , userMessage)) ;
	
		
		try {
			       
    	   Class.forName("com.mysql.cj.jdbc.Driver");
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root@123");
          	   
            
           
            String query  = "insert into feedbackTable(name , email , message , rating ) values( ? , ? , ?, ?) ;" ;
            PreparedStatement pt = connection.prepareStatement(query) ;
            pt.setString(1 , userName) ; 
            pt.setString(2 , userEmail) ;
            pt.setString(3 , userMessage ) ;
            pt.setInt(4 ,Integer.parseInt(userRating) ) ;
            



         
            

           int result  =  pt.executeUpdate() ;
//            int result    = 1 ;
           if (result == 1) {
        	    writer.println("<h1> the db is updated with name </h1>");
        	}


        } catch (  ClassNotFoundException | SQLException  e) {
            e.printStackTrace(); // Handle exceptions appropriately in a real application
    	    writer.println("<h1> the db is not updated with name </h1>");
    	    writer.println(e.getMessage());

        } 
        }
		
	}

	






