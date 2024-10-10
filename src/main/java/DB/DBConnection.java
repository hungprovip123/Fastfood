/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DBConnection {

    public static Connection connect() throws ClassNotFoundException, SQLException {
        // Tải driver JDBC của SQL Server
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

        // Thiết lập kết nối
        String url = "jdbc:sqlserver://MYDEVICE\\HUNG:1433;databaseName=lab01;integratedSecurity=true;";
        Connection conn = DriverManager.getConnection(url);

        return conn;
    }   
}
