package com.project;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DB;
import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class Result
 */
@WebServlet("/Result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Result() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int count=0;
		int na = 0;
		String value = null;
		HttpSession session = request.getSession(true);
		ArrayList<String> question = new ArrayList<String>();
		ArrayList<String> sol = new ArrayList<String>(); 
		HttpSession s = request.getSession();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String query = null;
		String subject = null;
		
		for(int i=0;i<10;i++) {
		String correct = request.getParameter("name"+i);
		String ques = request.getParameter("ques"+i);
		String solu = request.getParameter("sol"+i);		
		question.add(ques);
		sol.add(solu);
		//System.out.println(question);
		//System.out.println(sol);
		
		//System.out.println("hello");
		try {
			conn = (Connection) DB.getConnection();
			System.out.println("Connection bn gya!!!!");
			stmt = conn.createStatement();
			value = (String) s.getAttribute("value");
	        
	        if(value.equals("aptitude")) {
	        	query = "select * from aptitude_ques";
	        	subject = "Aptitude";
	        }
	        else if(value.equals("logical")) {
        		query = "select * from logical_ques";
        		subject = "Reasoning";
	        }
	        else if(value.equals("java")) {
        		query = "select * from java_ques";
        		subject = "Java";
	        }
	        else if(value.equals("cpp")) {
        		query = "select * from cpp_ques";
        		subject = "C++";
	        }
	        else if(value.equals("c")) {
        		query = "select * from c_ques";
        		subject = "C";
	        }
	        else if(value.equals("python")) {
        		query = "select * from python_ques";
        		subject = "Python";
	        }
			else if(value.equals("random")) {
				query = "select * from aptitude_ques union select * from cpp_ques union select * from java_ques union select * from logical_ques union select * from c_ques";
				subject = "Random";
			}
				 
	        
			rs = stmt.executeQuery(query);
			int ch = 0;
			while (rs.next()) 
			{	
			
				if(correct!= null && correct.equals(rs.getString(7)))
				{	
					System.out.println("Correct Answer");

						count++;
					  
					  //session.setMaxInactiveInterval(30*60);
					  
					  //response.sendRedirect("rough.jsp");
					 		
					  ch = 0;
					break;

				}
				else if(correct == null)
				{
					System.out.println("Not answered!!!");
					
					na++;
					ch = 0;
					break;
				}
				else
				{	
					ch = 1;
				}
					
			}
			if(ch == 1) {
					  
				System.out.println("Wrong Answer"); //response.sendRedirect("rough.jsp"); }
					 
			}
				
				
			
		} catch (SQLException e) {
			System.out.println(e);
		} 	
		/*finally {
			try {
				if (conn != null)
					conn.close();
					//stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}*/
		}
	
		
		try {
		conn = (Connection) DB.getConnection();
		
		int wr = 10 - count - na;
		String em = (String) session.getAttribute("email"); 
		String query1 = "UPDATE records SET  T_Att = T_Att+1 ,Q_Att = Q_Att+10  ,C_Ans = C_Ans+"+count+"  ,W_Ans = W_Ans+"+wr+"  ,Un_Ans = Un_Ans+"+na+"  WHERE Email='"+em+"' AND Subject='"+value+"'";
		stmt.executeUpdate(query1);
		System.out.println("Updated!!" +em);	
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				if (conn != null)
					conn.close();
					stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		

		session.setAttribute("subject", subject);
		session.setAttribute("count",count);
		session.setAttribute("na",na);
		session.setAttribute("quest", question);
		session.setAttribute("solut",sol);
		response.sendRedirect("ResultReport.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
