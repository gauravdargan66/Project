package com.project;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DB;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class SRecords
 */
@WebServlet("/SRecords")
public class SRecords extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SRecords() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession(true);
		String email = (String) session.getAttribute("email");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String q1 = "Select * from records WHERE Email = '"+email+"' AND Subject = 'aptitude'";
		String q2 = "Select * from records WHERE Email = '"+email+"' AND Subject = 'logical'";
		String q3 = "Select * from records WHERE Email = '"+email+"' AND Subject = 'java'";
		String q4 = "Select * from records WHERE Email = '"+email+"' AND Subject = 'cpp'";
		String q5 = "Select * from records WHERE Email = '"+email+"' AND Subject = 'c'";
		String q6 = "Select * from records WHERE Email = '"+email+"' AND Subject = 'python'";
		String q7 = "Select * from records WHERE Email = '"+email+"' AND Subject = 'random'";
		
		ArrayList<Integer> apt = new ArrayList<Integer>();
		ArrayList<Integer> lgi = new ArrayList<Integer>();
		ArrayList<Integer> jv = new ArrayList<Integer>();
		ArrayList<Integer> cpp = new ArrayList<Integer>();
		ArrayList<Integer> c = new ArrayList<Integer>();
		ArrayList<Integer> pyt = new ArrayList<Integer>();
		ArrayList<Integer> rnd = new ArrayList<Integer>();
		
		ArrayList<String> topEm = new ArrayList();
		ArrayList<Integer> topMk = new ArrayList();
		
		try {
			conn = (Connection) DB.getConnection();
			System.out.println("Connection bn gya!!!!");
			stmt = (Statement) conn.createStatement();
			rs = stmt.executeQuery(q1);
			while(rs.next())
			{	
				apt.add(rs.getInt(3));
				apt.add(rs.getInt(4));
				apt.add(rs.getInt(5));
				apt.add(rs.getInt(6));
				apt.add(rs.getInt(7));
			
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getInt(7));
			}
			
			rs =stmt.executeQuery(q2);
			while(rs.next())
			{
				lgi.add(rs.getInt(3));
				lgi.add(rs.getInt(4));
				lgi.add(rs.getInt(5));
				lgi.add(rs.getInt(6));
				lgi.add(rs.getInt(7));
			
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getInt(7));	
			}
			
			rs =stmt.executeQuery(q3);
			while(rs.next())
			{
				jv.add(rs.getInt(3));
				jv.add(rs.getInt(4));
				jv.add(rs.getInt(5));
				jv.add(rs.getInt(6));
				jv.add(rs.getInt(7));
			
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getInt(7));
			}
			
			rs = stmt.executeQuery(q4);
			while(rs.next())
			{
				cpp.add(rs.getInt(3));
				cpp.add(rs.getInt(4));
				cpp.add(rs.getInt(5));
				cpp.add(rs.getInt(6));
				cpp.add(rs.getInt(7));
			
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getInt(7));
			}
			
			rs = stmt.executeQuery(q5);
			while(rs.next())
			{
				c.add(rs.getInt(3));
				c.add(rs.getInt(4));
				c.add(rs.getInt(5));
				c.add(rs.getInt(6));
				c.add(rs.getInt(7));
			
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getInt(7));
			}
			
			rs = stmt.executeQuery(q6);
			while(rs.next())
			{
				pyt.add(rs.getInt(3));
				pyt.add(rs.getInt(4));
				pyt.add(rs.getInt(5));
				pyt.add(rs.getInt(6));
				pyt.add(rs.getInt(7));
			
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getInt(7));
			}
			
			rs = stmt.executeQuery(q7);
			while(rs.next())
			{
				rnd.add(rs.getInt(3));
				rnd.add(rs.getInt(4));
				rnd.add(rs.getInt(5));
				rnd.add(rs.getInt(6));
				rnd.add(rs.getInt(7));
				
				System.out.println(rs.getInt(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getInt(6));
				System.out.println(rs.getInt(7));
			}
			
			String topQ = "Select Email,sum(C_Ans) FROM records group by Email order by sum(C_Ans) Desc;";
			
			rs = stmt.executeQuery(topQ);
		
			while(rs.next())
			{
				topEm.add(rs.getString(1));
				topMk.add(rs.getInt(2));
				
				System.out.println();
				System.out.println(rs.getString(1));
				System.out.println(rs.getInt(2));
			}
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
		finally {
			try {
				if(conn!=null)
					conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		session.setAttribute("apt", apt);
		session.setAttribute("logi", lgi);
		session.setAttribute("java", jv);
		session.setAttribute("cpp", cpp);
		session.setAttribute("c", c);
		session.setAttribute("pyth", pyt);
		session.setAttribute("rand", rnd);
		
		session.setAttribute("tpem", topEm);
		session.setAttribute("tpmk", topMk);
		
		response.sendRedirect("Records.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
