package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import JDBC.JDBCConnection;
import model.Reservation;

public class BookService {
	
	public int addTravelAccountDetails(Reservation reservation) {
		Connection conn = JDBCConnection.getConnection();
		int status = 0;
		
		String query = "INSERT INTO reservation (From,To,noOfTicket,Date,name) VALUES (?,?,?,?,?)";
		
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, reservation.getfrom());
			preparedStatement.setString(2, reservation.getTo());
			preparedStatement.setString(3, reservation.getnoOfTIckets());
			preparedStatement.setString(4, reservation.getdate());
			preparedStatement.setString(5, reservation.getname());
			
			status = preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
	}


}
