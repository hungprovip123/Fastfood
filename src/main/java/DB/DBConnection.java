/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author tvhun
 */
public class DBConnection {

    public static Connection getConnection() {
        Connection conn;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://MYDEVICE\\HUNGG:1433;databaseName=PE_PRJ301;user=sa;password=123456;encrypt=true;trustServerCertificate=true;";
            conn = DriverManager.getConnection(url);
        } catch (Exception ex) {
            conn = null;
        }
        return conn;
    }
}
