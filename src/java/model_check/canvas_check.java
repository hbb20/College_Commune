/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model_check;
import c_c_db_package.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author HARSH BHAKT
 */
public class canvas_check {
    public static void main(String[] args) {
        try {
            class_canvas_model ccm=new class_canvas_model("UDA","Hello every one","IT",3);
            //   boolean b=ccm.add_new_message();
            //    System.out.println("message inserted is "+b);
            
            
            ResultSet rs=ccm.fetch_messages("IT",1);
            while(rs.next())
            {
                System.out.println(rs.getString("msg_text"));
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(canvas_check.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
