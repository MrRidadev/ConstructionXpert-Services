package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

    private static final String dbURI = "jdbc:mysql://localhost:3306/Construction?useSSL=false";
    private static final String dbUsername = "root";
    private static final String dbPassword = "0000";

    public Connexion() {}

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(dbURI, dbUsername, dbPassword);
            System.out.println("database connected");
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return con;
    }

}
