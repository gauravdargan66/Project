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
 * Servlet implementation class SignUpDetail
 */
@WebServlet("/SignUpDetail")
public class SignUpDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirm = request.getParameter("confirm");
		//boolean in = login(name,email,password);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	 //boolean login(String name, String email, String password)
	//{
		
		if(password.equals(confirm)) {
		Connection con = DB.getConnection();
		Statement stmt = null;
		String sql = "INSERT INTO signup(Name, Email, Password) VALUES('"+name+"','"+email+"','"+password+"')";
		try
		{	stmt = con.createStatement();
			Class.forName("com.mysql.jdbc.Driver");	
			int i = stmt.executeUpdate(sql);
			request.getRequestDispatcher("Log_Index.jsp").forward(request,response);
	
			System.out.println("User Created Sucessfully"+i);
			String query1 = "INSERT INTO Records(email,Subject,T_Att,Q_Att,C_Ans,W_Ans,Un_Ans) VALUES ('"+ email +"','aptitude',0,0,0,0,0)";
			int q1 = stmt.executeUpdate(query1);
			String query2 = "INSERT INTO Records(email,Subject,T_Att,Q_Att,C_Ans,W_Ans,Un_Ans) VALUES ('"+ email +"','logical',0,0,0,0,0)";
			int q2 = stmt.executeUpdate(query2);
			String query3 = "INSERT INTO Records(email,Subject,T_Att,Q_Att,C_Ans,W_Ans,Un_Ans) VALUES ('"+ email +"','java',0,0,0,0,0)";
			int q3 = stmt.executeUpdate(query3);
			String query4 = "INSERT INTO Records(email,Subject,T_Att,Q_Att,C_Ans,W_Ans,Un_Ans) VALUES ('"+ email +"','cpp',0,0,0,0,0)";
			int q4 = stmt.executeUpdate(query4);
			String query5 = "INSERT INTO Records(email,Subject,T_Att,Q_Att,C_Ans,W_Ans,Un_Ans) VALUES ('"+ email +"','c',0,0,0,0,0)";
			int q5 = stmt.executeUpdate(query5);
			String query6 = "INSERT INTO Records(email,Subject,T_Att,Q_Att,C_Ans,W_Ans,Un_Ans) VALUES ('"+ email +"','random',0,0,0,0,0)";
			int q6 = stmt.executeUpdate(query6);
			String query7 = "INSERT INTO Records(email,Subject,T_Att,Q_Att,C_Ans,W_Ans,Un_Ans) VALUES ('"+ email +"','python',0,0,0,0,0)";
			int q7 = stmt.executeUpdate(query7);
			System.out.println("Records added in records table!!");
			
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
	else
	{
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<script>");
		out.println("alert('Please provide same Passwords');");
		out.println("window.location.replace('index.jsp');");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>");
		//response.sendRedirect("index.jsp");
		//System.out.println("Heloo");
	}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
