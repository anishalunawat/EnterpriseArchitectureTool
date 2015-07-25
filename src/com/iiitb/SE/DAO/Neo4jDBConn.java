package com.iiitb.SE.DAO;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.neo4j.graphdb.Direction;
import org.neo4j.graphdb.DynamicLabel;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Label;
import org.neo4j.graphdb.Node;
import org.neo4j.graphdb.Relationship;
import org.neo4j.graphdb.RelationshipType;
import org.neo4j.graphdb.Transaction;
import org.neo4j.graphdb.factory.GraphDatabaseFactory;

public class Neo4jDBConn {
	
	private static enum RelTypes implements RelationshipType
	{
		    IS_A,
		    HAS_ACCESS,
		    HAS_PRIVILEGES
	}	
	public GraphDatabaseService getConnection() {
	
		GraphDatabaseFactory dbFactory = new GraphDatabaseFactory();
		GraphDatabaseService db= dbFactory.newEmbeddedDatabase("C:\\Neo4jDB");
		return db;
	}
	@SuppressWarnings("deprecation")
	public void addUsers(GraphDatabaseService db, String firstName, String lastName, String userID, String email, String password, String roleName){

		try (Transaction tx = db.beginTx()){
			//creating new user node
			Node user = db.createNode();
			
			Label userLabel = DynamicLabel.label("user");
			
			user.addLabel(userLabel);
			user.setProperty("FirstName", firstName);
			user.setProperty("LastName", lastName);
			user.setProperty("UserID", userID);
			user.setProperty("Email", email);
			user.setProperty("Password", password);
			user.setProperty("RoleName", roleName);
			
			// finding admin and making admin point to user
			
			@SuppressWarnings("deprecation")
			Iterable<Node> allNodes = db.getAllNodes();
			Iterator<Node> itr = allNodes.iterator();
			Node n = null;
			while (itr.hasNext()) {
			    n = itr.next();
			    if(n.hasLabel(DynamicLabel.label("admin"))) 
			    	break;
			}
			
			n.createRelationshipTo(user, RelTypes.HAS_PRIVILEGES);
			
			//depending upon role user node is connected to role node.
			allNodes = db.getAllNodes();
			itr = allNodes.iterator();
			n = null;
			while (itr.hasNext()) {
			    n = itr.next();
			    if(n.hasLabel(DynamicLabel.label("role")))
			    {
			    	if(n.getProperty("RoleName").equals(roleName)) 
			    		break;
			    }
			}
			
			user.createRelationshipTo(n, RelTypes.IS_A);
			tx.success();
		}
		System.out.println("Done successfully");
	}
	@SuppressWarnings("deprecation")
	public String isValidated(GraphDatabaseService db, String userID, String password){
		// TODO Auto-generated method stub
		try (Transaction tx = db.beginTx()){
			
			Iterable<Node> allNodes = db.getAllNodes();
			Iterator<Node> itr = allNodes.iterator();
			Node n = null;
			while (itr.hasNext()){
			    n = itr.next();
			    if(n.hasLabel(DynamicLabel.label("user")))
			    { 
			    	if(n.getProperty("UserID").equals(userID) && n.getProperty("Password").equals(password))
			    		return n.getProperty("RoleName").toString();
			    }
			}
		}
		return null;
	}
	public String getRoleName(GraphDatabaseService db, String userID) {
		// TODO Auto-generated method stub
		try (Transaction tx = db.beginTx()){
			
			
		
		}
		return null;
	}
	public void createJSON(GraphDatabaseService db, String userID) throws JSONException {
		// TODO Auto-generated method stub
		
		JSONObject jsonFile = new JSONObject(); 
		JSONArray childrenArray = new JSONArray();
		try (Transaction tx = db.beginTx()){
			
			Node n = findNode(db, userID);
			jsonFile.put("name", n.getProperty("RoleName"));
			
			Node node = null;
			for(Relationship r: n.getRelationships(Direction.OUTGOING)){
				   
				node = r.getEndNode();
			}
			Collection<Node> children = new HashSet<Node>();
			for(Relationship r: node.getRelationships(Direction.OUTGOING)){
			   
				children.add(r.getEndNode());
			}
			System.out.println("size = "+ children.size());
			for(Node child : children){
				
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("Type", child.getProperty("Type"));
				childrenArray.put(jsonObj);
			}
			jsonFile.put("children", childrenArray);
			
			try {  
	              
	            // Writing to a file  
	            File file=new File("E:\\graph.json");  
	            file.createNewFile();  
	            FileWriter fileWriter = new FileWriter(file);  
	            System.out.println("Writing JSON object to file");  
	            System.out.println("-----------------------");  
	            System.out.print(jsonFile);  
	  
	            fileWriter.write(jsonFile.toString());  
	            fileWriter.flush();  
	            fileWriter.close();  
	  
	        } catch (IOException e) {  
	            e.printStackTrace(); 
	            db.shutdown();
	        } 
		}
	}
	public static Node findNode(GraphDatabaseService db, String userID){
		
		Iterable<Node> allNodes = db.getAllNodes();
		Iterator<Node> itr = allNodes.iterator();
		Node n = null;
		while (itr.hasNext()){
		    n = itr.next();
		    if(n.hasLabel(DynamicLabel.label("user")))
		    { 
		    	if(n.getProperty("UserID").equals(userID))
		    		return n;
		    }
		}
		return null;
	}
}