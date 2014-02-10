/*
 * To change this template, choose Tools | Templates
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
 *
 * @author HBB20
 */
public class pending_req {

    c_c_db ccd = null;
    Connection conn = null;
    //String enroll

    public pending_req() {
        ccd = new c_c_db();
        conn = ccd.getDB();

    }
public ResultSet getSuspended(String dept)
{
     ResultSet rs=null;   
    try {
           
            Connection conn=ccd.getDB();
            Statement st=conn.createStatement();
            String query="select * from req_suspended where dept='"+dept+"'";
            // String query="select * from req_waiting where dept='IT'";
            rs=st.executeQuery(query);
        } catch (SQLException ex) {
           System.out.print("Error while fatching suspended student of "+dept);
        }
    return rs;
}   
        
        
        
    public boolean set_suspend(String user_id) {
        String f_name;
        f_name = "";
        String l_name = "";
        String dept = "";
        pending_req pr = new pending_req();
        boolean done = false;
        try {
            ResultSet rs = null;

            String query = "select * from req_waiting where user_id='" + user_id + "'";
            Statement st = conn.createStatement();
            st.execute(query);
            rs = st.executeQuery(query);
            if (rs.next()) {
                f_name = rs.getString("f_name");
                l_name = rs.getString("l_name");
                dept = rs.getString("dept");
            }
        } catch (Exception ex) {
            System.out.print("exeption at selecting for suspending  " + ex);
            return false;
        }

        String query = "insert into req_suspended values('" + user_id + "','" + f_name + "','" + l_name + "','" + dept + "')";
        try {
            Statement st = conn.createStatement();
            // st.execute(query);
            int up = st.executeUpdate(query);
            done = true;
        } catch (SQLException ex) {
            System.out.print("pending request_suspend_execption " + ex);
            return false;
        }

        pr.eraseWaitingRequest(user_id);
        return done;
    }

    
    public boolean restore_suspend(String user_id) {
        String f_name;
        f_name = "";
        String l_name = "";
        String dept = "";
        
        pending_req pr = new pending_req();
        boolean done = false;
        try {
            ResultSet rs = null;

            String query = "select * from req_suspended where user_id='" + user_id + "'";
            Statement st = conn.createStatement();
            st.execute(query);
            rs = st.executeQuery(query);
            if (rs.next()) {
                f_name = rs.getString("f_name");
                l_name = rs.getString("l_name");
                dept = rs.getString("dept");
            }
        } catch (Exception ex) {
            System.out.print("exeption at selecting for restoring at suspend   " + ex);
            //return false;
        }

        String query = "insert into req_waiting values('" + user_id + "','" + f_name + "','" + l_name + "','" + dept + "','no','s')";
        try {
            Statement st = conn.createStatement();
            // st.execute(query);
            int up = st.executeUpdate(query);
            done = true;
        } catch (SQLException ex) {
            System.out.print("pending request_restore__execption_in waiting table " + ex);
          //  return false;
        }

        pr.eraseSuspendedRequest(user_id);
       // return done;
        return done;
    }

    
    public int set_new_pr(String user_id, String f_name, String l_name, String branch, String rl) {
        boolean b = false;
        int up = 0;
        String query = "insert into req_waiting values('" + user_id + "','" + f_name + "','" + l_name + "','" + branch + "','no','" + rl + "')";
        try {
            Statement st = conn.createStatement();
            // st.execute(query);
            up = st.executeUpdate(query);
        } catch (SQLException ex) {
            System.out.print("s1_verify_execption");
            up = 5;
        }

        return up;
    }

    public boolean approve(String user_id) {
        boolean b = false;
        int up = 0;
        String query = "update req_waiting set approved='yes' where user_id='" + user_id + "'";
        try {
            Statement st = conn.createStatement();
            st.execute(query);
            up = st.executeUpdate(query);
            b = true;

        } catch (SQLException ex) {
            System.out.print("s1_verify_execption   " + ex);
            up = 5;
        }

        return b;
    }

    public void eraseWaitingRequest(String user_id) {
        String query = "delete from req_waiting where user_id='" + user_id + "'";
        try {

            Statement st = conn.createStatement();
            st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(pending_req.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void eraseSuspendedRequest(String user_id) {
        String query = "delete from req_suspended where user_id='" + user_id + "'";
        try {

            Statement st = conn.createStatement();
            st.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(pending_req.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public String check_role_waiting(String user_id) {
        String role = "Sorry, Some error occured in pojo";
        try {
            ResultSet rs = null;

            String query = "select * from req_waiting where user_id='" + user_id + "'";
            Statement st = conn.createStatement();
            st.execute(query);
            rs = st.executeQuery(query);
            if (rs.next()) {
                role = rs.getString("role");
            }
            if (role.equals("s")) {
                role = "student";

            } else if (role.equals("f")) {
                role = "faculty";
            } else {
                role = user_id + "not found";
            }

        } catch (SQLException ex) {
            Logger.getLogger(user_model.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            return role;
        }

    }

}
