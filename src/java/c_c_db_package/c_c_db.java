package c_c_db_package;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.applet.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author HBB20
 */
public class c_c_db {
     Connection db;
  public c_c_db()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            db=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/cc_project","root","");
        } catch (Exception ex) {
            System.out.print("connection problem");
          
        }
    }
   public Connection getDB()
    {
        return db;
    }
  
}
