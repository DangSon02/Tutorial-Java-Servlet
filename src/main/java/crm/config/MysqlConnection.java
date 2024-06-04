package crm.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnection {

    private final static String url = "jdbc:mysql://localhost:3307/TEST";
    private final static String userName = "root";
    private final static String passWord = "admin123";


    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try {
                return DriverManager.getConnection(url,userName,passWord);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
