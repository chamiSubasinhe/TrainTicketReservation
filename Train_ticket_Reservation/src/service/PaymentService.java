package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import JDBC.JDBCConnection;
import model.Payment;

public class PaymentService {
	
	public boolean paymentCheck(Payment payment) {
		Connection conn = JDBCConnection.getConnection();
		boolean status = false;
		
		String query = "SELECT fristname,Password FROM passenger WHERE userName=? AND Password=? ";
		
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, payment.getfristname());
			preparedStatement.setString(2, payment.getpassword());
			
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
