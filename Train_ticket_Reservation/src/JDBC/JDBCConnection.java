package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {

	private static String DB_URL = "jdbc:mysql://localhost:3306/train_ticket_reservation";
    private static String DRIVER_NAME = "com.mysql.jdbc.Driver";   
    private static String USERNAME = "root";   
    private static String PASSWORD = "";
    private static Connection con;
	
    
	public static Connection getConnection() {
        try {
            Class.forName(DRIVER_NAME);
            try {
                con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
            } catch (SQLException ex) {
                System.out.println("Failed to create the database connection."); 
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver not found."); 
        }
        return con;
    }
}
