package com.iiitb.SE.Validations;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.neo4j.graphdb.GraphDatabaseService;

import com.iiitb.SE.DAO.DatabaseConnection;
import com.iiitb.SE.DAO.Neo4jDBConn;

/**
 * Servlet implementation class CreateAccount
 */
@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userid");
		DatabaseConnection conn = new DatabaseConnection();
		boolean res = conn.isValidUserId(userId);
		
		PrintWriter out=response.getWriter();
		
		response.setContentType("text/html");
		response.setHeader("Cache-Control", "no-cache");
		if(res == true)
			out.println("true");
		else
			out.println("false");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String userid = request.getParameter("userid");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String roleType = request.getParameter("dropdown1");
		Neo4jDBConn conn = new Neo4jDBConn();
		GraphDatabaseService db = conn.getConnection();
		conn.addUsers(db, fname, lname, userid, email, pwd, roleType);
		db.shutdown();
		RequestDispatcher rd = request.getRequestDispatcher("WebPages/home.html");
		rd.forward(request, response);
	}

}
