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
			cell_11.setProperty("Type", "What");
			cell_11.setProperty("TypeOfDocument", "Project Glossary");
			
			Node cell_12 = db.createNode();
			Label cellLabel_12 = DynamicLabel.label("C12");
			cell_12.addLabel(cellLabel_12);
			cell_12.setProperty("Type", "How");
			cell_12.setProperty("TypeOfDocument", "List Of Methods");
			
			Node cell_13 = db.createNode();
			Label cellLabel_13 = DynamicLabel.label("C13");
			cell_13.addLabel(cellLabel_13);
			cell_13.setProperty("Type", "Where");
			cell_13.setProperty("TypeOfDocument", "Location Identification");
			
			Node cell_14 = db.createNode();
			Label cellLabel_14 = DynamicLabel.label("C14");
			cell_14.addLabel(cellLabel_14);
			cell_14.setProperty("Type", "Who");
			cell_14.setProperty("TypeOfDocument", "List Of Persons");
			
			Node cell_15 = db.createNode();
			Label cellLabel_15 = DynamicLabel.label("C15");
			cell_15.addLabel(cellLabel_15);
			cell_15.setProperty("Type", "When");
			cell_15.setProperty("TypeOfDocument", "List Of Events");
			
			Node cell_16 = db.createNode();
			Label cellLabel_16 = DynamicLabel.label("C16");
			cell_16.addLabel(cellLabel_16);
			cell_16.setProperty("Type", "Why");
			cell_16.setProperty("TypeOfDocument", "Project Glossary");
			
			Node cell_21 = db.createNode();
			Label cellLabel_21 = DynamicLabel.label("C21");
			cell_21.addLabel(cellLabel_21);
			cell_21.setProperty("Type", "What");
			cell_21.setProperty("TypeOfDocument", "Requirements");
			
			Node cell_22 = db.createNode();
			Label cellLabel_22 = DynamicLabel.label("C22");
			cell_22.addLabel(cellLabel_22);
			cell_22.setProperty("Type", "How");
			cell_22.setProperty("TypeOfDocument", "Business Decisions");
			
			Node cell_23 = db.createNode();
			Label cellLabel_23 = DynamicLabel.label("C23");
			cell_23.addLabel(cellLabel_23);
			cell_23.setProperty("Type", "Where");
			cell_23.setProperty("TypeOfDocument", "Distributed System Architecture");
			
			Node cell_24 = db.createNode();
			Label cellLabel_24 = DynamicLabel.label("C24");
			cell_24.addLabel(cellLabel_24);
			cell_24.setProperty("Type", "Who");
			cell_24.setProperty("TypeOfDocument", "Work Flow Model");
			
			Node cell_25 = db.createNode();
			Label cellLabel_25 = DynamicLabel.label("C25");
			cell_25.addLabel(cellLabel_25);
			cell_25.setProperty("Type", "When");
			cell_25.setProperty("TypeOfDocument", "Master Schedule");
			
			Node cell_26 = db.createNode();
			Label cellLabel_26 = DynamicLabel.label("C26");
			cell_26.addLabel(cellLabel_26);
			cell_26.setProperty("Type", "Why");
			cell_26.setProperty("TypeOfDocument", "Requirements");
			
			/*Node cell_31 = db.createNode();
			Label cellLabel_31 = DynamicLabel.label("C31");
			cell_31.addLabel(cellLabel_31);
			cell_31.setProperty("What", "Design Analysis");
			
			Node cell_32 = db.createNode();
			Label cellLabel_32 = DynamicLabel.label("C32");
			cell_32.addLabel(cellLabel_32);
			cell_32.setProperty("How", "Application Architecture");
			
			Node cell_33 = db.createNode();
			Label cellLabel_33 = DynamicLabel.label("C33");
			cell_33.addLabel(cellLabel_33);
			cell_33.setProperty("Where", "Technology Architecture");
			
			Node cell_34 = db.createNode();
			Label cellLabel_34 = DynamicLabel.label("C34");
			cell_34.addLabel(cellLabel_34);
			cell_34.setProperty("Who", "Human Interface Architecture");
			
			Node cell_35 = db.createNode();
			Label cellLabel_35 = DynamicLabel.label("C35");
			cell_35.addLabel(cellLabel_35);
			cell_35.setProperty("When", "Processing Structure");
			
			Node cell_36 = db.createNode();
			Label cellLabel_36 = DynamicLabel.label("C36");
			cell_36.addLabel(cellLabel_36);
			cell_36.setProperty("Why", "Design Analysis");
			
			Node cell_41 = db.createNode();
			Label cellLabel_41 = DynamicLabel.label("C41");
			cell_41.addLabel(cellLabel_41);
			cell_41.setProperty("What", "Implementation");
			
			Node cell_42 = db.createNode();
			Label cellLabel_42 = DynamicLabel.label("C42");
			cell_42.addLabel(cellLabel_42);
			cell_42.setProperty("How", "Program Structure");
			
			Node cell_43 = db.createNode();
			Label cellLabel_43 = DynamicLabel.label("C43");
			cell_43.addLabel(cellLabel_43);
			cell_43.setProperty("Where", "Network Architecture");
			
			Node cell_44 = db.createNode();
			Label cellLabel_44 = DynamicLabel.label("C44");
			cell_44.addLabel(cellLabel_44);
			cell_44.setProperty("Who", "Interface and Security Design");
			
			Node cell_45 = db.createNode();
			Label cellLabel_45 = DynamicLabel.label("C45");
			cell_45.addLabel(cellLabel_45);
			cell_45.setProperty("When", "Control Structure");
			
			Node cell_46 = db.createNode();
			Label cellLabel_46 = DynamicLabel.label("C46");
			cell_46.addLabel(cellLabel_46);
			cell_46.setProperty("Why", "Implementation");
			
			Node cell_51 = db.createNode();
			Label cellLabel_51 = DynamicLabel.label("C51");
			cell_51.addLabel(cellLabel_51);
			cell_51.setProperty("What", "Deployment Files");
			
			Node cell_52 = db.createNode();
			Label cellLabel_52 = DynamicLabel.label("C52");
			cell_52.addLabel(cellLabel_52);
			cell_52.setProperty("How", "Program Design");
			
			Node cell_53 = db.createNode();
			Label cellLabel_53 = DynamicLabel.label("C53");
			cell_53.addLabel(cellLabel_53);
			cell_53.setProperty("Where", "Communication Facilities");
			
			Node cell_54 = db.createNode();
			Label cellLabel_54 = DynamicLabel.label("C54");
			cell_54.addLabel(cellLabel_54);
			cell_54.setProperty("Who", "Security Code");
			
			Node cell_55 = db.createNode();
			Label cellLabel_55 = DynamicLabel.label("C55");
			cell_55.addLabel(cellLabel_55);
			cell_55.setProperty("When", "Timing Definition");
			
			Node cell_56 = db.createNode();
			Label cellLabel_56 = DynamicLabel.label("C56");
			cell_56.addLabel(cellLabel_56);
			cell_56.setProperty("Why", "Deployment Files");
			
			Node cell_61 = db.createNode();
			Label cellLabel_61 = DynamicLabel.label("C61");
			cell_61.addLabel(cellLabel_61);
			cell_61.setProperty("What", "Post Deployment1");
			
			Node cell_62 = db.createNode();
			Label cellLabel_62 = DynamicLabel.label("C62");
			cell_62.addLabel(cellLabel_62);
			cell_62.setProperty("How", "Post Deployment2");
			
			Node cell_63 = db.createNode();
			Label cellLabel_63 = DynamicLabel.label("C63");
			cell_63.addLabel(cellLabel_63);
			cell_63.setProperty("Where", "Post Deployment3");
			
			Node cell_64 = db.createNode();
			Label cellLabel_64 = DynamicLabel.label("C64");
			cell_64.addLabel(cellLabel_64);
			cell_64.setProperty("Who", "Post Deployment4");
			
			Node cell_65 = db.createNode();
			Label cellLabel_65 = DynamicLabel.label("C65");
			cell_65.addLabel(cellLabel_65);
			cell_65.setProperty("When", "Post Deployment5");
			
			Node cell_66 = db.createNode();
			Label cellLabel_66 = DynamicLabel.label("C66");
			cell_66.addLabel(cellLabel_66);
			cell_66.setProperty("Why", "Post Deployment6");*/
			
			Relationship r = role1.createRelationshipTo(cell_11,RelTypes.HAS_ACCESS);
			r.setProperty("Id","11");
			
			r = role1.createRelationshipTo(cell_12,RelTypes.HAS_ACCESS);
			r.setProperty("Id","12");
			
			r = role1.createRelationshipTo(cell_13,RelTypes.HAS_ACCESS);
			r.setProperty("Id","13");
			
			r = role1.createRelationshipTo(cell_14,RelTypes.HAS_ACCESS);
			r.setProperty("Id","14");
			
			r = role1.createRelationshipTo(cell_15,RelTypes.HAS_ACCESS);
			r.setProperty("Id","15");
			
			r = role1.createRelationshipTo(cell_16,RelTypes.HAS_ACCESS);
			r.setProperty("Id","16");
			
			r = role2.createRelationshipTo(cell_21,RelTypes.HAS_ACCESS);
			r.setProperty("Id","21");
			
			r = role2.createRelationshipTo(cell_22,RelTypes.HAS_ACCESS);
			r.setProperty("Id","22");
			
			r = role2.createRelationshipTo(cell_23,RelTypes.HAS_ACCESS);
			r.setProperty("Id","23");
			
			r = role2.createRelationshipTo(cell_24,RelTypes.HAS_ACCESS);
			r.setProperty("Id","24");
			
			r = role2.createRelationshipTo(cell_25,RelTypes.HAS_ACCESS);
			r.setProperty("Id","25");
			
			r = role2.createRelationshipTo(cell_26,RelTypes.HAS_ACCESS);
			r.setProperty("Id","26");
			
			/*r = role3.createRelationshipTo(cell_31,RelTypes.HAS_ACCESS);
			r.setProperty("Id","31");
			
			r = role3.createRelationshipTo(cell_32,RelTypes.HAS_ACCESS);
			r.setProperty("Id","32");
			
			r = role3.createRelationshipTo(cell_33,RelTypes.HAS_ACCESS);
			r.setProperty("Id","33");
			
			r = role3.createRelationshipTo(cell_34,RelTypes.HAS_ACCESS);
			r.setProperty("Id","34");
			
			r = role3.createRelationshipTo(cell_35,RelTypes.HAS_ACCESS);
			r.setProperty("Id","35");
			
			r = role3.createRelationshipTo(cell_36,RelTypes.HAS_ACCESS);
			r.setProperty("Id","36");
			
			r = role4.createRelationshipTo(cell_41,RelTypes.HAS_ACCESS);
			r.setProperty("Id","41");
			
			r = role4.createRelationshipTo(cell_42,RelTypes.HAS_ACCESS);
			r.setProperty("Id","42");
			
			r = role4.createRelationshipTo(cell_43,RelTypes.HAS_ACCESS);
			r.setProperty("Id","43");
			
			r = role4.createRelationshipTo(cell_44,RelTypes.HAS_ACCESS);
			r.setProperty("Id","44");
			
			r = role4.createRelationshipTo(cell_45,RelTypes.HAS_ACCESS);
			r.setProperty("Id","45");
			
			r = role4.createRelationshipTo(cell_46,RelTypes.HAS_ACCESS);
			r.setProperty("Id","46");
			
			r = role5.createRelationshipTo(cell_51,RelTypes.HAS_ACCESS);
			r.setProperty("Id","51");
			
			r = role5.createRelationshipTo(cell_52,RelTypes.HAS_ACCESS);
			r.setProperty("Id","52");
			
			r = role5.createRelationshipTo(cell_53,RelTypes.HAS_ACCESS);
			r.setProperty("Id","53");
			
			r = role5.createRelationshipTo(cell_54,RelTypes.HAS_ACCESS);
			r.setProperty("Id","54");
			
			r = role5.createRelationshipTo(cell_55,RelTypes.HAS_ACCESS);
			r.setProperty("Id","55");
			
			r = role5.createRelationshipTo(cell_56,RelTypes.HAS_ACCESS);
			r.setProperty("Id","56");
			
			r = role6.createRelationshipTo(cell_61,RelTypes.HAS_ACCESS);
			r.setProperty("Id","61");
			
			r = role6.createRelationshipTo(cell_62,RelTypes.HAS_ACCESS);
			r.setProperty("Id","62");
			
			r = role6.createRelationshipTo(cell_63,RelTypes.HAS_ACCESS);
			r.setProperty("Id","63");
			
			r = role6.createRelationshipTo(cell_64,RelTypes.HAS_ACCESS);
			r.setProperty("Id","64");
			
			r = role6.createRelationshipTo(cell_65,RelTypes.HAS_ACCESS);
			r.setProperty("Id","65");
			
			r = role6.createRelationshipTo(cell_66,RelTypes.HAS_ACCESS);
			r.setProperty("Id","66");*/
			
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