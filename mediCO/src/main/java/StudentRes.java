import java.io.IOException;
import java.io.PrintWriter;
import java.sql.* ;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@WebServlet("/registration") 
public class StudentRes extends HttpServlet{
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
		String userPhone = req.getParameter("phone");
		String userGender = req.getParameter("gender");
		String userCourse = req.getParameter("course");
		String userPass = req.getParameter("password");
		
		
		
		
		writer.println("""
				
				<h1>The information that you submitted are :</h1>
			<h2>%s</h2>
			<h2>%s</h2>
			<h2>%s</h2>
			<h2>%s</h2>
			
				
				
				
				
				 """.formatted(userName , userEmail , userPhone , userGender , userCourse , userPass)) ;
	
		
		try {
			       
    	   Class.forName("com.mysql.cj.jdbc.Driver");
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root@123");
          	   
            
           
            String query  = "insert into students(phone , name , email , gender , course , password ) values( ? , ? , ?, ? , ? , ?) ;" ;
            PreparedStatement pt = connection.prepareStatement(query) ;
            pt.setString(1 , userPhone) ; 
            pt.setString(2 , userName) ;
            pt.setString(3 , userEmail ) ;
            pt.setString(4 , userGender ) ;
            pt.setString(5 , userCourse) ;
            pt.setString(6 , userPass ) ;
            
            
            

           int result  =  pt.executeUpdate() ;
           
           if (result == 1) {
        	   
        	   resp.sendRedirect("student-registration-Success.jsp");
        	   System.out.println("success") ;
        	   
        	}


        } catch (  ClassNotFoundException | SQLException  e) {
           
        	resp.sendRedirect("student-registration-failure.jsp") ;
     	   System.out.println("failure") ;



        } 
        }
		
	}

	






