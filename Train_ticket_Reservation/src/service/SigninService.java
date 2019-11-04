package service;


/**
*
* @author chami
*/


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import JDBC.JDBCConnection;
import model.Login;

public class SigninService {
	
	public boolean signinCheck(Login login) {
		Connection conn = JDBCConnection.getConnection();
		boolean status = false;
		
		String query = "SELECT email,Password FROM passenger WHERE email=? AND Password=? ";
		
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, login.getEmail());
			preparedStatement.setString(2, login.getPassword());
			
			ResultSet rs = preparedStatement.executeQuery();
			/*
			while(rs.next()) {
				String a =rs.getString("email");
			}
			*/
			while(rs.next()) {
				status=true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
		
	}

}
