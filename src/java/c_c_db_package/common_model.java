/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package c_c_db_package;


import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
/**
 *
 * @author HBB20
 */
public class common_model {
    c_c_db ccd=null;
    Connection conn=null;
    private Statement Statement;
    public common_model() {
        ccd=new c_c_db();
        conn=ccd.getDB();
        
        
    }
    
   public String check_status(String user_id)
    {   String query;
        String state="",table="req_waiting";
        query="select * from "+table+" where user_id='"+user_id+"' AND approved='no'";
        ResultSet rs=null;
        try {
            Statement st=conn.createStatement();
            st.execute(query);
            rs=st.executeQuery(query);
            if(rs.next())
            {
                state="waiting";
                return state;
            }
            
            table="users";
            query="select * from "+table+" where user_id='"+user_id+"'";
            st.execute(query);
            rs=st.executeQuery(query);
            if(rs.next())
            {
                state="member";
                return state;
            }
            
             table="req_suspended";
            query="select * from "+table+" where user_id='"+user_id+"'";
            st.execute(query);
            rs=st.executeQuery(query);
            if(rs.next())
            {
                state="suspended";
                return state;
            }
            
            System.out.print("cm_login_ck1");
            
             table="req_waiting";
            query="select * from "+table+" where user_id='"+user_id+"' AND approved='yes'";
            st.execute(query);System.out.print("cm_login_ck2");
            rs=st.executeQuery(query);
            System.out.print("cm_login_ck3");
            if(rs.next())
            {System.out.print("cm_login_ck4");
                state="approved";
                return state;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(common_model.class.getName()).log(Level.SEVERE, null, ex);
        }
                
        return "new";
    }
   
   public String is_exist(String user_id)
   {
       String ans="unimplemented";
       return ans;
   }

    
}
