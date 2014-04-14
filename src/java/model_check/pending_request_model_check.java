/*
 * To change this template, choose Tools | Templates
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
 * @author HBB20
 */
public class pending_request_model_check {
    public static void main(String arg[])
    {
        pending_req pr=new pending_req();
//        boolean i=pr.approve("t_waiting");
//        if(i)
//        {
//            System.out.print("Updated successfully");
//        }
//        else
//        {
//             System.out.print("Update fail");
//        }
        
        
        
        //earase waiting request
      //  pr.eraseWaitingRequest("as");
        
      /**  //Get suspended checking
        ResultSet rs=pr.getSuspended("IT");
        try {
            while(rs.next())
            {
                System.out.println(rs.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(pending_request_model_check.class.getName()).log(Level.SEVERE, null, ex);
        }
        **/
        
        
     // pr.delete_suspend("100010116043");
        
        
    }
}
