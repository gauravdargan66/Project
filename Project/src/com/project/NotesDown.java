package com.project;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NotesDown
 */
@WebServlet("/NotesDown")
public class NotesDown extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NotesDown() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        
       String id = (String) request.getParameter("id");
       String filename = null;
        
        if(id.equals("1"))
        {
        	filename = "Educature_Java.pdf";
        }
        else if(id.equals("2"))
        {
        	filename = "Educature_Cpp.pdf";
        }
        else if(id.equals("3"))
        {
        	filename = "Educature_C.pdf";
        }
        else if(id.equals("4"))
        {
        	filename = "Educature_Python.pdf";
        }
        String filepath="C:\\Users\\gdarg\\eclipse-workspace\\Project\\WebContent\\files\\";
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
        
        FileInputStream fileInputStream = new FileInputStream(filepath+filename);
        
        int i;
        while((i=fileInputStream.read()) != -1)
        {
        	out.write(i);
        }
        fileInputStream.close();
        out.close();
  }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
