/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package c_c_db_package;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hbb20
 */
public class notice_model {

    String title, body, sender, notice_time;
    int urgency, id, iDate, iMonth, iYear, ihh, imm;
    c_c_db ccd = new c_c_db();

    public int getiDate() {
        return iDate;
    }

    public void setiDate(int iDate) {
        this.iDate = iDate;
    }

    public int getiMonth() {
        return iMonth;
    }

    public void setiMonth(int iMonth) {
        this.iMonth = iMonth;
    }

    public int getiYear() {
        return iYear;
    }

    public void setiYear(int iYear) {
        this.iYear = iYear;
    }

    public int getIhh() {
        return ihh;
    }

    public void setIhh(int ihh) {
        this.ihh = ihh;
    }

    public int getImm() {
        return imm;
    }

    public void setImm(int imm) {
        this.imm = imm;
    }
    Connection conn = null;

    public notice_model() {

    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getNotice_time() {
        return notice_time;
    }

    public void setNotice_time(String notice_time) {
        this.notice_time = notice_time;
    }

    public int getUrgency() {
        return urgency;
    }

    public void setUrgency(int urgency) {
        this.urgency = urgency;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public notice_model(String title, String body, String sender, int urgency) {
         conn = (Connection) ccd.getDB();
        this.title = title;
        this.body = body;
        this.sender = sender;
        this.urgency = urgency;
    }

    public boolean storeNotice() {
        boolean b = false;

        //String query="NSERT INTO `notice`( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('"+title+"','"+body+"','"+sender+"',"+urgency+",now())";
        String query = "INSERT INTO `notice`( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('" + title + "','" + body + "','" + sender + "'," + urgency + ",now())";
        try {
            java.sql.Statement st = conn.createStatement();
            // st.execute(query);
            st.executeUpdate(query);
            b = true;
        } catch (SQLException ex) {
            System.out.print("notice_storing_execption " + ex);

        }

        return b;
    }

    public static notice_model fetchNotice(int i) {
        Connection conn = (Connection) new c_c_db().getDB();
        notice_model n = new notice_model();
        ResultSet rs = null;
        //String query="NSERT INTO notice( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('"+title+"','"+body+"','"+sender+"',"+urgency+",now())";
        String query = "select * from notice where n_id=" + i;
        try {
            java.sql.Statement st = conn.createStatement();
            // st.execute(query);
            rs = st.executeQuery(query);

        } catch (SQLException ex) {
            System.out.print("notice_fetch_execption " + ex);
            return n;
        }
        try {
            rs.next();
            n.setId(i);
            System.out.println(rs.getInt(1));
            n.setTitle(rs.getString(2));
            System.out.println(rs.getString(2));
            n.setBody(rs.getString(3));
            System.out.println(rs.getString(3));
            n.setSender(rs.getString(4));
            System.out.println(rs.getString(4));
            n.setUrgency(rs.getInt(5));
            System.out.println(rs.getInt(5));

            System.out.println(rs.getTime(6));
            Date dt = rs.getDate(6);
            Time tm = rs.getTime(6);
            n.setiDate(dt.getDate());
            n.setiMonth(dt.getMonth());
            n.setiYear(dt.getYear());
            n.setIhh(tm.getHours());
            n.setImm(tm.getMinutes());

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return n;

    }

    public static int deleteNotice(int i) {
        Connection conn = (Connection) new c_c_db().getDB();
        notice_model n = new notice_model();
        int deleted = 0, deleted_asso = 0;
        ResultSet rs = null;

        String query = "delete from notice where n_id=" + i;
        String query_asso = "delete from notice_asso where na_id=" + i;
        try {
            java.sql.Statement st = conn.createStatement();
            // st.execute(query);
            deleted = st.executeUpdate(query);
            deleted_asso = st.executeUpdate(query_asso);
            System.out.print("notice_Delete " + deleted + " and association deleted " + deleted_asso);
        } catch (SQLException ex) {
            System.out.print("notice_Delete_execption " + ex);
            return deleted;
        }

        return deleted;

    }

    public static ResultSet fetchNoticebyClass(String branch, int level) {
        Connection conn = (Connection) new c_c_db().getDB();
        notice_model n = new notice_model();
        ResultSet rs = null;
        //String query="NSERT INTO notice( `n_title`, `n_body`, `n_sender_id`, `n_urgency`, `n_time`) VALUES ('"+title+"','"+body+"','"+sender+"',"+urgency+",now())";
        String query = "SELECT n_id, n_title, n_body, n_sender_id, n_urgency, n_time FROM  `notice` ,  `notice_asso` WHERE notice_asso.na_id = notice.n_id AND notice_asso.na_branch =  '" + branch + "' AND notice_asso.na_level =  '" + level + "'";
        try {
            java.sql.Statement st = conn.createStatement();
            // st.execute(query);
            rs = st.executeQuery(query);

        } catch (SQLException ex) {
            System.out.print("notice_fetchbyclass_execption " + ex);
           
        }
     /*   try {
            while (rs.next()) {
                System.out.println("" + rs.getInt(1) + rs.getString(2) + rs.getString(3) + rs.getString(4) + rs.getInt(5) + rs.getDate(6));
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }*/
        return rs;

    }

}
