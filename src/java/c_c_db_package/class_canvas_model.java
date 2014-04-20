/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package c_c_db_package;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author HARSH BHAKT
 */
public class class_canvas_model {
     c_c_db ccd=null;
    Connection conn=null;
    String sender_id,msg_text,dept;
    int level;
    java.sql.Statement st1;
    
    
    public class_canvas_model() {
          ccd = new c_c_db();
        conn = ccd.getDB();
         try {
              st1= conn.createStatement();
         } catch (SQLException ex) {
             Logger.getLogger(class_canvas_model.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
    
    public class_canvas_model(String psender_id,String pmsg_text,String pdept,int plevel)
    {
           ccd = new c_c_db();
        conn = ccd.getDB();
         sender_id=psender_id;
         msg_text=pmsg_text;
         dept=pdept;
         level=plevel;     
    }
    
  public boolean add_new_message()
    {
         boolean b = false;

        //String query="NSERT INTO `notice`( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('"+title+"','"+body+"','"+sender+"',"+urgency+",now())";
        String query = "INSERT INTO `canvas` VALUES ('" +sender_id + "','" + msg_text + "',now(),'"+dept+"',"+level+")";
        try {
            java.sql.Statement st = conn.createStatement();
            // st.execute(query);
            st.executeUpdate(query);
            b = true;
        } catch (SQLException ex) {
            System.out.print("canvas_storing_execption " + ex);
        }
        return b;
    }
  
   public ResultSet fetch_messages(String dept,int level)
    {
       ResultSet rs = null;
        //String query="NSERT INTO notice( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('"+title+"','"+body+"','"+sender+"',"+urgency+",now())";
        String query = "select * from canvas where msg_dept='" +dept+"' AND msg_level="+level+" ORDER BY msg_time DESC";
        try {
           java.sql.Statement st = st1;
            // st.execute(query);
            rs = st.executeQuery(query);
            
        } catch (SQLException ex) {
            System.out.print("message fetch by class execption " + ex);
            return rs;
        }      
        return rs;       
    }
}
