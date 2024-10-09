package db;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionManager {

    // Return a Connection object using properties file
    public static Connection returnConnectionObject() {
        Connection conn = null;
        
        Properties prp = new Properties();
        try {
            // Load properties from the specified file
            prp.load(new FileInputStream("src/main/resources/testconnection.properties"));

            // Read the DB URL, username, and password from the properties file
            String dburl = prp.getProperty("DB_URL");
            String user = prp.getProperty("DB_USERNAME");
            String passw = prp.getProperty("DB_PASSWORD");

            // Establish a connection using the provided credentials
            conn = DriverManager.getConnection(dburl, user, passw);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    // Return a Connection object directly (without using a properties file)
    public static Connection getConnection() {
        Connection conn = null;
        try {
            // JDBC URL to connect to MySQL
            String dbUrl = "jdbc:mysql://127.0.0.1:3306/?user=root";

            // Database credentials
            String user = "root";
            String pass = "root";

            // Load the MySQL JDBC driver (optional in newer versions)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the database
            conn = DriverManager.getConnection(dbUrl, user, pass);
            System.out.println("connection created");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return conn;
    }
}
