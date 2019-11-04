package service;

/**
*
* @author chami
*/

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import JDBC.JDBCConnection;
import model.Registation;

public class SignupService {
	
	public int addTravelAccountDetails(Registation registation) {
		Connection conn = JDBCConnection.getConnection();
		int status = 0;
		
		String query = "INSERT INTO passenger (Firstname,Lastname,email,mobileNo,Password) VALUES (?,?,?,?,?)";
		
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, registation.getFristname());
			preparedStatement.setString(2, registation.getLastname());
			preparedStatement.setString(3, registation.getEmail());
			preparedStatement.setString(4, registation.getPhoneNo());
			preparedStatement.setString(5, registation.getPassword());
			
			status = preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
	}

}
