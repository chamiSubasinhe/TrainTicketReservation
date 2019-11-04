

	package service;

	import java.sql.Connection;

	import java.sql.PreparedStatement;
	import java.sql.SQLException;
	import JDBC.JDBCConnection;
	//import model.contact;
	import servlet.Contact;

	public class ContactService {
		
		public int addTravelAccountDetails(Contact contact) {
			Connection conn = JDBCConnection.getConnection();
			int status = 0;
		
			String query = "INSERT INTO contact (name,email,message) VALUES (?,?,?)";
			
			try {
				PreparedStatement preparedStatement = conn.prepareStatement(query);
				preparedStatement.setString(1, contact.getName());
				preparedStatement.setString(2, contact.getEmail());
				preparedStatement.setString(3, contact.getMessage());
				
				status = preparedStatement.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return status;
			
		}

		

	}


