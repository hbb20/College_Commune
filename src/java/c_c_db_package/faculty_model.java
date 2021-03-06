/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package c_c_db_package;
import c_c_db_package.c_c_db;
//import com.mysql.jdbc.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HARSH BHAKT
 */
public class faculty_model {
    String user_id,f_name,m_name,l_name,short_name,position,cell_self,email,address,joining_year,dept,avatar_path;
    c_c_db ccd=new c_c_db();
    Connection conn=ccd.getDB();

    public faculty_model(String user_id, String f_name, String m_name, String l_name, String short_name, String position, String cell_self, String email, String address, String joining_year, String dept, String avatar_path) {
        this.user_id = user_id;
        this.f_name = f_name;
        this.m_name = m_name;
        this.l_name = l_name;
        this.short_name = short_name;
        this.position = position;
        this.cell_self = cell_self;
        this.email = email;
        this.address = address;
        this.joining_year = joining_year;
        this.dept = dept;
        this.avatar_path = avatar_path;
    }
    
    public faculty_model()
    {
        
    }
    
    public boolean grantNewFaculty()
    {
        boolean rtrn=false;
        String query;
        Integer count=0;
        try {
            Statement st=conn.createStatement();
            query="insert into users values('"+user_id+"','"+user_id+"','fw','"+position+"','"+dept+"')";
            count=st.executeUpdate(query);
            if(count!=0)
            {
                rtrn=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(user_model.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            return rtrn;
        }
    }
    public ResultSet getDeptFaculty(String depatment)
    {
         Connection con = (Connection) new c_c_db().getDB();
      
        ResultSet rs = null;
        //String query="NSERT INTO notice( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('"+title+"','"+body+"','"+sender+"',"+urgency+",now())";
        String query;
        query = "SELECT * from faculty where dept='"+depatment+"' and position!='admin'";
        try 
        {
            java.sql.Statement st = con.createStatement();
            // st.execute(query);
            rs = st.executeQuery(query);

        }
        catch (SQLException ex) 
        {
            System.out.println("faculty_byDept_execption " + ex);
           
        }

        return rs;
    }
    
    public String make_short(String fname,String mname,String lname)
    {
        String ff=String.valueOf(fname.charAt(0));
            ff=ff.toUpperCase();
        String mf=String.valueOf(mname.charAt(0));
            mf=mf.toUpperCase();
        String lf=String.valueOf(lname.charAt(0));
            lf=lf.toUpperCase();
        String short_nm=ff+mf+lf;
        return short_nm;
        
    }
    
    public boolean update_role(String uname,String role)
    {   boolean is_done=false;
         String query = "update faculty set position='"+role+"' where user_id='"+uname+"'";
        try {
            Statement st = conn.createStatement();
            st.executeUpdate(query);
            is_done=true;
        } catch (SQLException ex) {
            Logger.getLogger(pending_req.class.getName()).log(Level.SEVERE, null, ex);
        }
        return is_done;
    }
    
    
     public boolean remove_faculty(String uname)
    {   boolean is_done=false;
         String query = "delete from faculty where user_id='"+uname+"'";
         String query2 = "delete from users where user_id='"+uname+"'";
         String query3 = "delete from faculty_association where faculty_id='"+uname+"'";
        try {
            Statement st = conn.createStatement();
            st.executeUpdate(query);
            st.executeUpdate(query2);
            st.executeUpdate(query3);
            is_done=true;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(pending_req.class.getName()).log(Level.SEVERE, null, ex);
        }
        return is_done;
    }
}
