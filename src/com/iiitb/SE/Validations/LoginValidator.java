package com.iiitb.SE.Validations;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.neo4j.graphdb.GraphDatabaseService;

import com.iiitb.SE.DAO.DatabaseConnection;
import com.iiitb.SE.DAO.Neo4jDBConn;

/**
 * Servlet implementation class LoginValidator
 */
@WebServlet("/LoginValidator")
public class LoginValidator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginValidator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID =  request.getParameter("u_id");
		String password = request.getParameter("pwd");
		Neo4jDBConn dbconn = new Neo4jDBConn();
		GraphDatabaseService db = dbconn.getConnection();
		String roleName = dbconn.isValidated(db, userID, password);
		db.shutdown();
		if(roleName != null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("userID", userID);
			session.setAttribute("roleName", roleName);
			RequestDispatcher rd = request.getRequestDispatcher("WebPages/displayPrivileges.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("WebPages/error.jsp");
			rd.forward(request, response);
		}
	}

}
