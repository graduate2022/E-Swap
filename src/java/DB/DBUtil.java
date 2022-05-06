/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;
import java.sql.*;

/**
 *
 * @author Alaa
 */
public class DBUtil {

private static Connection connection = null;

private  static final String DB_PATH = "jdbc:derby://localhost:1527/Employee";
private  static final String DB_USER_NAME = "alaa";
private  static final String DB_PASS = "alaa";

    public static Connection getConnecttion() {
        if (connection == null) {
            try {
                connection = DriverManager.getConnection(DB_PATH, DB_USER_NAME, DB_PASS);
            } catch (Exception e) {

                System.out.println("Error" + e);
            }
        }
        return connection;
    }

}
