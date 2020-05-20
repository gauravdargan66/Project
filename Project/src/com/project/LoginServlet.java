package com.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DB;
import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		//HttpSession session = request.getSession();
		
		try {
			conn = (Connection) DB.getConnection();
			System.out.println("Connection bn gya!!!!");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("Select * from signup");
			int ch = 0;
			while (rs.next()) {	
				if(email.equals(rs.getString(2)) && password.equals(rs.getString(3)))
				{	
					System.out.println("Record Matched!!!");
					/*
					 * HttpSession oldSession = request.getSession(false); if(oldSession!=null){
					 * oldSession.invalidate(); }
					 */
					HttpSession session = request.getSession(true);
					session.setMaxInactiveInterval(30*60);
					session.setAttribute("name",rs.getString(1));
					session.setAttribute("email",rs.getString(2));
					response.sendRedirect("Log_Index.jsp");
					ch = 0;
					break;
					//chain.doFilter(request,response);
				}
				else
				{
					ch = 1;
				}
					
			}
			if(ch == 1)
			{
				PrintWriter out = response.getWriter();
				out.println("<html>");
				out.println("<head>");
				out.println("<script>");
				out.println("function msg(){");
				out.println("alert('Wrong Email Id or Password. Please Try Again!!');");
				out.println("window.location.replace('LogIn.jsp');");
				out.println("}");
				out.println("</script>");
				out.println("</head>");
				out.println("<body onload='msg()'>");
				out.println("</body>");
				out.println("</html>");
				//response.sendRedirect("LogIn.jsp");
			}
			//response.sendRedirect("index.jsp");
		
			//response.sendRedirect("LogIn.jsp");
			//request.getRequestDispatcher("LogIn.jsp").forward(request, response);
			//System.out.println("Wrong Email or Password!!!");
			
		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			try {
				if (conn != null)
					conn.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		//request.setAttribute("name", i);
		//request.getRequestDispatcher("Log_Index.jsp").forward(request, response);
		
	}

}
