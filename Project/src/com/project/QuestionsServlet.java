package com.project;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import com.model.Questions;


/**
 * Servlet implementation class QuestionsServlet
 */
@WebServlet("/questionsServlet")
public class QuestionsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("Ajax called");
		/*
		 * ObjectMapper objMapper = new ObjectMapper();
		 * 
		 * List<String> lsOfQues = new ArrayList<String>();
		 * lsOfQues.add("What is java?"); lsOfQues.add("What is Ajax");
		 * 
		 * Questions questions = new Questions();
		 * 
		 * questions.setQuestions(lsOfQues); //String returnVal =
		 * objMapper.writeValueAsString(questions);
		 */		response.getWriter().write("{\"ques\": \"What is Java\"}");
		response.setStatus(200);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
