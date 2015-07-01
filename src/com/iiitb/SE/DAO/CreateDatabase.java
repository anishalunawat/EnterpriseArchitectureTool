package com.iiitb.SE.DAO;

import org.neo4j.graphdb.DynamicLabel;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Label;
import org.neo4j.graphdb.Node;
import org.neo4j.graphdb.Relationship;
import org.neo4j.graphdb.RelationshipType;
import org.neo4j.graphdb.Transaction;
import org.neo4j.graphdb.factory.GraphDatabaseFactory;

public class CreateDatabase {

	private static enum RelTypes implements RelationshipType
	{
		    IS_A,
		    HAS_ACCESS,
		    HAS_PRIVILEGES
	}	
	public void loadDatabase()
	{
		GraphDatabaseFactory dbFactory = new GraphDatabaseFactory();
		GraphDatabaseService db= dbFactory.newEmbeddedDatabase("C:\\Neo4jDB");
		try (Transaction tx = db.beginTx()){
			
			Node role1 = db.createNode();
			Label roleLabel1 = DynamicLabel.label("role");
			role1.addLabel(roleLabel1);
			role1.setProperty("RoleName", "Planner");
			
			Node role2 = db.createNode();
			Label roleLabel2 = DynamicLabel.label("role");
			role2.addLabel(roleLabel2);
			role2.setProperty("RoleName", "Owner");
			
			Node role3 = db.createNode();
			Label roleLabel3 = DynamicLabel.label("role");
			role3.addLabel(roleLabel3);
			role3.setProperty("RoleName", "Designer");
			
			Node role4 = db.createNode();
			Label roleLabel4 = DynamicLabel.label("role");
			role4.addLabel(roleLabel4);
			role4.setProperty("RoleName", "Builder");
			
			Node role5 = db.createNode();
			Label roleLabel5 = DynamicLabel.label("role");
			role5.addLabel(roleLabel5);
			role5.setProperty("RoleName", "Programmer");
			
			Node role6 = db.createNode();
			Label roleLabel6 = DynamicLabel.label("role");
			role6.addLabel(roleLabel6);
			role6.setProperty("RoleName", "User");
			
			Node cell_11 = db.createNode();
			Label cellLabel_11 = DynamicLabel.label("C11");
			cell_11.addLabel(cellLabel_11);
			cell_11.setProperty("Artifact Name", "Text Document");
			
			Node cell_21 = db.createNode();
			Label cellLabel_21 = DynamicLabel.label("C21");
			cell_21.addLabel(cellLabel_21);
			cell_21.setProperty("Artifact Name", "Text Document");
			
			Node cell_31 = db.createNode();
			Label cellLabel_31 = DynamicLabel.label("C31");
			cell_31.addLabel(cellLabel_31);
			cell_31.setProperty("Artifact Name", "Tree Structure");
			
			Node cell_41 = db.createNode();
			Label cellLabel_41 = DynamicLabel.label("C41");
			cell_41.addLabel(cellLabel_41);
			cell_41.setProperty("Artifact Name", "T-Chart");
			
			Node cell_51 = db.createNode();
			Label cellLabel_51 = DynamicLabel.label("C51");
			cell_51.addLabel(cellLabel_51);
			cell_51.setProperty("Artifact Name", "Text Document");
			
			Node cell_61 = db.createNode();
			Label cellLabel_61 = DynamicLabel.label("C61");
			cell_61.addLabel(cellLabel_61);
			cell_61.setProperty("Artifact Name", "Text Document");
			
			Relationship r = role1.createRelationshipTo(cell_11,RelTypes.HAS_ACCESS);
			r.setProperty("Id","1");
			r = role2.createRelationshipTo(cell_21,RelTypes.HAS_ACCESS);
			r.setProperty("Id","2");
			r = role3.createRelationshipTo(cell_31,RelTypes.HAS_ACCESS);
			r.setProperty("Id","3");
			r = role4.createRelationshipTo(cell_41,RelTypes.HAS_ACCESS);
			r.setProperty("Id","4");
			r = role5.createRelationshipTo(cell_51,RelTypes.HAS_ACCESS);
			r.setProperty("Id","5");
			r = role6.createRelationshipTo(cell_61,RelTypes.HAS_ACCESS);
			r.setProperty("Id","6");
			
			Node admin = db.createNode();
			Label userLabel1 = DynamicLabel.label("admin");
			
			admin.addLabel(userLabel1);
			admin.setProperty("FirstName", "Gaurav");
			admin.setProperty("LastName", "Pandey");
			admin.setProperty("UserID", "Gaurav2401");
			admin.setProperty("Email", "gp.gauravpandey99@gmail.com");
			admin.setProperty("Password", "123456");
			
			tx.success();
		}
		System.out.println("Database created");
		db.shutdown();
	}
}