package oism;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
    private static String url = "jdbc:mysql://localhost:3306/oism";
    private static String userName = "root";
    private static String password = "root";
    private static Connection con;

    // Method to establish a database connection and return the Connection object.
    public static Connection getConnection() {
        try {
            // Load the MySQL JDBC driver.
            Class.forName("com.mysql.jdbc.Driver");

            // Establish a database connection using the specified URL, username, and password.
            con = DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
            System.out.println("Database connection is not successful!!!");
        }

        return con;
    }
}
