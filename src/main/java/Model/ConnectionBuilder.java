/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Patiz
 */
public class ConnectionBuilder {

    public static Connection getConnection() throws SQLException, IOException {
        Connection con = null;

        //String user = "pusher";
        //String password = "pusher";
        //String url = "jdbc:mysql://159.65.13.27:3306/test_pusher";
        //String dbClass = "com.mysql.jdbc.Driver";
        
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        
            Properties prop = new Properties();
            InputStream input = classloader.getResourceAsStream("database.properties");
            prop.load(input);
            String USER = prop.getProperty("user");
            String PASS = prop.getProperty("pass");
            String DB = prop.getProperty("db");
            

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://159.65.13.27:3306/"+DB+"",USER,PASS);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        }

        return con;
    }

    public static void main(String[] args) throws SQLException, IOException {
        Connection con = ConnectionBuilder.getConnection();

        if(con==null){
            System.out.println("fail");
        }else{
            System.out.println("Success");
        }
    }
}
