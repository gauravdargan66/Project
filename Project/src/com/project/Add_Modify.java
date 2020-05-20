package com.project;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
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
@WebServlet("/Add_Modify")
public class Add_Modify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Modify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("opr");
		String subject = request.getParameter("sub");
		String question = request.getParameter("ques");
		String opt1 = request.getParameter("1opt");
		String opt2 = request.getParameter("2opt");
		String opt3 = request.getParameter("3opt");
		String opt4 = request.getParameter("4opt");
		String copt = request.getParameter("Copt");
		String sol = request.getParameter("sol");
		
		//boolean in = login(name,email,password);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	 //boolean login(String name, String email, String password)
	//{
		
		Connection con = DB.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		int f=1;
		if(operation.equals("Add")) {
			if(opt1 == "" || opt2 == "" || opt3 == "" || opt4 == "" || copt == "") {
				PrintWriter out = response.getWriter();
				out.println("<html>");
				out.println("<body>");
				out.println("<script>");
				out.println("alert('Please Provide all fields');");
				out.println("window.location.replace('Admin_dash.jsp');");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
			}
			else {
		if(subject.equals("cpp_ques")) {
			try {
				stmt = con.createStatement();
				rs = stmt.executeQuery("select * from cpp_ques");
			} catch (SQLException e4) {
				// TODO Auto-generated catch block
				e4.printStackTrace();
			}
		}
		if(subject.equals("c_ques")) {
			try {
				stmt = con.createStatement();
				rs=stmt.executeQuery("select * from c_ques");
			} catch (SQLException e3) {
				// TODO Auto-generated catch block
				e3.printStackTrace();
			}
		}
		if(subject.equals("java_ques")) {
			try {
				stmt = con.createStatement();
				rs=stmt.executeQuery("select * from java_ques");
			} catch (SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
		}
		if(subject.equals("aptitude_ques")) {
			try {
				stmt = con.createStatement();
				rs=stmt.executeQuery("select * from aptitude_ques");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if(subject.equals("logical_ques")) {
			try {
				stmt = con.createStatement();
				rs=stmt.executeQuery("select * from logical_ques");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if(subject.equals("python_ques")) {
			try {
				stmt = con.createStatement();
				rs=stmt.executeQuery("select * from python_ques");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
			}
		try {
			while(rs.next())
			{	if(question.equals(rs.getString(2))) {

					f=0;
					break;
				}
				else {
					f=1;
				}
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(f==0) {
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<script>");
		out.println("alert('Question Repeated');");
		out.println("window.location.replace('Admin_dash.jsp');");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>");
		}
		if(f==1)
		{
			String sql = "INSERT INTO "+subject+"(question, opt_1, opt_2, opt_3, opt_4, correct_opt,solution) VALUES('"+question+"','"+opt1+"','"+opt2+"','"+opt3+"','"+opt4+"','"+copt+"','"+sol+"')";
			
			System.out.println("HEllo");
			try
			{	stmt = con.createStatement();
				Class.forName("com.mysql.jdbc.Driver");	
				int i = stmt.executeUpdate(sql);
				System.out.println("User Created Sucessfully"+i);
				PrintWriter out = response.getWriter();
				out.println("<html>");
				out.println("<body>");
				out.println("<script>");
				out.println("alert('Question Added Sucessfully');");
				out.println("window.location.replace('Admin_dash.jsp');");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
				//response.sendRedirect("Admin_dash.jsp");
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
		}
		
		
		int k=1;
		if(operation.equals("Delete"))
		{
			if(subject.equals("cpp_ques")) {
				try {
					stmt = con.createStatement();
					rs = stmt.executeQuery("select * from cpp_ques");
				} catch (SQLException e4) {
					// TODO Auto-generated catch block
					e4.printStackTrace();
				}
			}
			if(subject.equals("c_ques")) {
				try {
					stmt = con.createStatement();
					rs=stmt.executeQuery("select * from c_ques");
				} catch (SQLException e3) {
					// TODO Auto-generated catch block
					e3.printStackTrace();
				}
			}
			if(subject.equals("java_ques")) {
				try {
					stmt = con.createStatement();
					rs=stmt.executeQuery("select * from java_ques");
				} catch (SQLException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
			}
			if(subject.equals("aptitude_ques")) {
				try {
					stmt = con.createStatement();
					rs=stmt.executeQuery("select * from aptitude_ques");
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			if(subject.equals("logical_ques")) {
				try {
					stmt = con.createStatement();
					rs=stmt.executeQuery("select * from logical_ques");
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			if(subject.contentEquals("python_ques")) {
				try {
					stmt = con.createStatement();
					rs = stmt.executeQuery("select * from python_ques");
				} catch(SQLException e1) {
					e1.printStackTrace();
				}
			}
			

			
			try {
				
				while(rs.next())
				{	if(question.equals(rs.getString(2))) {
						k=0;
						break;
					}
					else
					{
						k=1;
					}
				}
				
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			if(k==0) {
				String sql = "Delete from "+subject+" where question='"+question+"';";
				try
				{	stmt = con.createStatement();
					Class.forName("com.mysql.jdbc.Driver");	
				int i = stmt.executeUpdate(sql);
				System.out.println("Question Deleted"+i);
				PrintWriter out = response.getWriter();
				out.println("<html>");
				out.println("<body>");
				out.println("<script>");
				out.println("alert('Question Deleted Sucessfully');");
				out.println("window.location.replace('Admin_dash.jsp');");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
			}
			catch(SQLException e1)
				{
					e1.printStackTrace();
				} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			if(k==1)
			{
				PrintWriter out = response.getWriter();
				out.println("<html>");
				out.println("<body>");
				out.println("<script>");
				out.println("alert('Question Does Not Exist');");
				out.println("window.location.replace('Admin_dash.jsp');");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
			}
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
