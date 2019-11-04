package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import JDBC.JDBCConnection;
import model.Ticket;

public class SearchTicketService {
	
	public List<Ticket> getTicketDetails(){
		List<Ticket> ticketList = new ArrayList<>();
		Connection conn = JDBCConnection.getConnection();
		
		String query = "SELECT * FROM ticket";
		
		try {
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			ResultSet rs = preparedStatement.executeQuery();

			while(rs.next()) {
				Ticket tempTickets = new Ticket();
				tempTickets.setTicketid(rs.getInt("TicketId"));
				tempTickets.setName(rs.getString("Name"));
				tempTickets.setTo(rs.getString("End"));
				tempTickets.setFrom(rs.getString("Start"));
				tempTickets.setNoOfTicket(rs.getInt("noOfTickets"));
				tempTickets.setPaymethod(rs.getString("paymethod"));
				tempTickets.setTotalPrice(Double.valueOf(rs.getString("Totalprice")));
				ticketList.add(tempTickets);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ticketList;
		
	}

}
