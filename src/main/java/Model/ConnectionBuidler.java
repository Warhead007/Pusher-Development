/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author patiz
 */
public class ConnectionBuidler {
    public static Connection getConnection() throws SQLException{
        Connection con = null;
        String user = "pusher";
        String password = "pusher";
        String url = "jdbc:mysql://159.65.13.27:3306/pusher";
        String dbClass = "com.mysql.jdbc.Driver";
        
        try {
            Class.forName(dbClass);
            con = (Connection) DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionBuidler.class.getName()).log(Level.SEVERE, null, ex);
        }
       
           
        
        
        return con;
    }
    public static void main(String[] args) {
        try {
            Connection con = ConnectionBuidler.getConnection();
            System.out.println(con);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionBuidler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
