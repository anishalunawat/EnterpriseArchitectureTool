package com.iiitb.SE.FrameworkData;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.json.JSONException;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Node;

import com.iiitb.SE.DAO.Neo4jDBConn;

/**
 * Servlet implementation class SubmitFrameworkData
 */
@WebServlet("/SubmitFrameworkData")
public class SubmitFrameworkData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitFrameworkData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userID = request.getParameter("userID");
		System.out.println("u = "+ userID); 
		
		Neo4jDBConn conn = new Neo4jDBConn();
		GraphDatabaseService db = conn.getConnection();
		try {
			conn.createJSON(db, userID);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			db.shutdown();
		}
		
		db.shutdown();
		RequestDispatcher rd = request.getRequestDispatcher("WebPages/entryPoint.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
