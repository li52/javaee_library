package demo.util;

import com.mysql.jdbc.Driver;

import java.sql.*;

/**
 * Created by ${李朋}
 * on 2017/6/16.
 */
public class Db {
    private static final String URL = "jdbc:mysql:///javaee_library?user=root&password=lipeng";

    public static Connection getConnection() {
        try {
            new Driver();
            return DriverManager.getConnection(URL);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public static void close(ResultSet resultSet, PreparedStatement preparedStatement,Connection connection) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
