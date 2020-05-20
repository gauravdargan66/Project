package com.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class S2
 */
@WebServlet("/S2")
public class S2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		    Connection conn = null;
		    String url = "jdbc:mysql://localhost:3306/";
		    String dbName = "project";
		    String driver = "com.mysql.jdbc.Driver";
		    String userName = "root";
		    String password = "Shivam";

		    HttpSession s = request.getSession();
		    
		    
		    Statement st;
		    try {
		        Class.forName(driver).newInstance();
		        conn = (Connection) DriverManager.getConnection(url + dbName, userName, password);
		        System.out.println("Connected!");
		       // String pid = request.getParameter("pid");

		        ArrayList al = null;
		        ArrayList pid_list = new ArrayList();
		        String query = null;
		        String value = (String) s.getAttribute("value");
		        
		        if(value.equals("aptitude"))
		        		query = "select * from aptitude_ques order by rand() limit 10";
		        else if(value.equals("logical"))
	        		query = "select * from logical_ques order by rand() limit 10";
		        else if(value.equals("java"))
	        		query = "select * from java_ques order by rand() limit 10";
		        else if(value.equals("cpp"))
	        		query = "select * from cpp_ques order by rand() limit 10";
		        else if(value.equals("c"))
	        		query = "select * from c_ques order by rand() limit 10";
		        else if(value.equals("vb"))
	        		query = "select * from vb_ques order by rand() limit 10";
		        else if(value.equals("python"))
	        		query = "select * from python_ques order by rand() limit 10";
		        else if(value.equals("random"))
	        		query = "select * from aptitude_ques union select * from cpp_ques union select * from java_ques union select * from logical_ques union select * from c_ques order by rand() limit 10;";
		        
		        
		        System.out.println("query " + query);
		        st = conn.createStatement();
		        ResultSet rs = st.executeQuery(query);

		        while (rs.next()) {

		            al = new ArrayList<String>();

		     
		            out.println(rs.getString(2));
		            out.println(rs.getString(3));
		            out.println(rs.getString(4));
		            out.println(rs.getString(5));
		            out.println(rs.getString(6));
		            out.println(rs.getString(8));


		            
		            al.add(rs.getString(2));
		            al.add(rs.getString(3));
		            al.add(rs.getString(4));
		            al.add(rs.getString(5));
		            al.add(rs.getString(6));
		            al.add(rs.getString(8));

		            System.out.println("al :: " + al);
		            pid_list.add(al);
		        }
		        //HttpSession session = request.getSession(true);

		        request.setAttribute("piList", pid_list);
		       RequestDispatcher view = request.getRequestDispatcher("Ques_page.jsp");
		       view.forward(request, response);
		        conn.close();
		        System.out.println("Disconnected!");
		    } catch (Exception e) {
		        e.printStackTrace();
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
