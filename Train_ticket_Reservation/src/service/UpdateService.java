package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import JDBC.JDBCConnection;
import model.Reservation;

public class UpdateService {
	public int addTravelAccountDetails(Reservation reservation) {
		Connection conn = JDBCConnection.getConnection();
		int status = 0;
		
		String query = "UPDATE reservation SET From=?,To=?,noOfTicket=?,name=?WHERE ReservationId=?";
		
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, reservation.getname());
			preparedStatement.setString(2, reservation.getfrom());
			preparedStatement.setString(3, reservation.getTo());
			preparedStatement.setString(4, reservation.getnoOfTIckets());
	
			status = preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
	}


}
