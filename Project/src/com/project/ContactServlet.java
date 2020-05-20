package com.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DB;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		Connection con = DB.getConnection();
		Statement stmt = null;
		String sql = "INSERT INTO message(name, email, subject, message) VALUES('"+name+"','"+email+"','"+subject+"','"+message+"')";
		try
		{	stmt = con.createStatement();
			Class.forName("com.mysql.jdbc.Driver");	
			int i = stmt.executeUpdate(sql);
			System.out.println("Message Sucessfully Sent"+i);
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Message Sucessfully Sent');");
			out.println("window.location.replace('contact.jsp');");
			out.println("</script>");
			out.println("</body>");
			out.println("</html>");
			
			//request.getRequestDispatcher("Log_Index.jsp").forward(request,response);
			//System.out.println("User Created Sucessfully"+i);
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		catch(ClassNotFoundException e)	
		{
			e.printStackTrace();
		}
		finally
		{
			try {
				stmt.close();
				con.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		/* return true; */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
