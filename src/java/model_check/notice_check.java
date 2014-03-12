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
 * @author hbb20
 */
public class notice_check {
    public static void main(String s[])
    {
       notice_model nt=new notice_model("trial", "body", "KKP", 2);
       // boolean b=nt.storeNotice();
       // System.out.print(b);
        
        
        //fatch notice
                 // notice_model n1=notice_model.fetchNotice(12);
                 // System.out.print(n1.getNotice_time());
        
        
        
        
        
        //delete
                // { int deleted=notice_model.deleteNotice(12);}
        
        //fatch notice by class
        //notice_model.fetchNoticebyClass("IT","2");
        
        
        
        //fetch notice by sender
        //int last=nt.fetchLastNoticeIdBySender("UDA");
        
       
       
       //notice association addition
       boolean is_associated=nt.associateNotice("32", "dept", "lvl", "");
       System.out.print("associated ="+is_associated);
       
     
        
    }

    
}
