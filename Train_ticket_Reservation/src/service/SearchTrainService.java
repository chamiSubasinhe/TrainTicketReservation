package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import JDBC.JDBCConnection;
import model.Train;

public class SearchTrainService {
	public List<Train> getTrainDetails1(){
		List<Train> trainList = new ArrayList<>();
		Connection conn = JDBCConnection.getConnection();
		
		String query = "SELECT * FROM train";
		
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			ResultSet rs = preparedStatement.executeQuery();

			while(rs.next()) {
				Train tempTrains = new Train();
				tempTrains.settrainId(rs.getString("TrainId"));
				tempTrains.setdate(rs.getString("date"));
				tempTrains.setTo(rs.getString("End"));
				tempTrains.setFrom(rs.getString("Start"));
				tempTrains.setTime(rs.getString("time"));
				
				trainList.add(tempTrains);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return trainList;
		
	}

	public List<Train> getTrainDetails() {
		// TODO Auto-generated method stub
		return null;
	}

}


