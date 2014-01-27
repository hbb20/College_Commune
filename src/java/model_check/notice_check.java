/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model_check;
import c_c_db_package.*;


/**
 *
 * @author hbb20
 */
public class notice_check {
    public static void main(String s[])
    {
        notice_model nt=new notice_model("trial", "body", "KKP", 2);
        boolean b=nt.storeNotice();
        System.out.print(b);
        notice_model n1=notice_model.fetchNotice(12);
        System.out.print(n1.getNotice_time());
        
    }
}
