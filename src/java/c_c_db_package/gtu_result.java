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
import java.sql.Time;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HARSH BHAKT
 */
public class gtu_result {

    c_c_db ccd = new c_c_db();
    Connection con = ccd.getDB();
    String user_id;
    Double[] sem = new Double[8];

    public gtu_result(String user_id,double sem1,double sem2,double sem3,double sem4,double sem5,double sem6,double sem7,double sem8) {
        this.user_id = user_id;
        this.sem[0]=sem1;
        this.sem[1]=sem2;
        this.sem[2]=sem3;
        this.sem[3]=sem4;
        this.sem[4]=sem5;
        this.sem[5]=sem6;
        this.sem[6]=sem7;
        this.sem[7]=sem8;
    }

    public gtu_result() {
    }

    public String getUser_id() {
        return user_id;
    }

    public Double[] getSem() {
        return sem;
    }
    
    
    

    public static boolean add_blank_gtu_result(String user_id) {
        boolean isStudent = c_c_db_package.student.isStudent(user_id);
        boolean isDone = false;
        String query = "insert into gtu_result_table values('" + user_id + "',0,0,0,0,0,0,0,0)";
        //  String query="insert into student values('t_id2_ok','t_fname','t_mname','t_lname',2,'t_scell','t_pcell','t_ladd','t_padd','no avtar',3,'try_email','try_dept','UDA')";
        if (isStudent) {
            try {
                 c_c_db ccd = new c_c_db();
                 Connection con = ccd.getDB();
                Statement St = con.createStatement();
                St.executeUpdate(query);
                isDone = true;
            } catch (SQLException ex) {
                Logger.getLogger(student.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return isDone;
    }

    public static ResultSet get_result(String user_id) {

        Connection conn = (Connection) new c_c_db().getDB();
        ResultSet rs = null;
        //String query="NSERT INTO notice( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('"+title+"','"+body+"','"+sender+"',"+urgency+",now())";
        String query = "select * from gtu_result_table where user_id=" + user_id;
        try {
            java.sql.Statement st = conn.createStatement();
            // st.execute(query);
            rs = st.executeQuery(query);

        } catch (SQLException ex) {
            System.out.print("notice_fetch_execption " + ex);
        }
        return rs;
    }
    
    
    public boolean add_gtu_result() {
        boolean isStudent = c_c_db_package.student.isStudent(user_id);
        boolean isDone = false;
        String query = "update gtu_result_table set sem1="+sem[0]+",sem2="+sem[1]+",sem3="+sem[2]+",sem4="+sem[3]+",sem5="+sem[4]+",sem6="+sem[5]+",sem7="+sem[6]+",sem8="+sem[7]+" where user_id='"+user_id+"'";

        if (isStudent) {
            try {

                Statement St = con.createStatement();
                St.executeUpdate(query);
                isDone = true;
            } catch (SQLException ex) {
                Logger.getLogger(student.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return isDone;
    }
}

