/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model_check;
import c_c_db_package.faculty_model;
import com.sun.crypto.provider.RSACipher;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author HARSH BHAKT
 */
public class faculty_model_check {
 
    
 public static void main(String a[])
 {
     
     
     
     
     //fatchbydept
//     try {
//         faculty_model fm1=new faculty_model();
//         
//         ResultSet rs;
//         rs = fm.getDeptFaculty("IT");
//         while(rs.next())
//         {
//             System.out.println(rs.getString(1));
//         }
//     } catch (SQLException ex) {
//         Logger.getLogger(faculty_model_check.class.getName()).log(Level.SEVERE, null, ex);
//     }
 
 
 
 //faculty grant check
    // faculty_model fm2=new faculty_model("userid", null, null, null, null, "prof", null, null, null, null,"IT", null);
      //fm.grantNewFaculty();
 
 //make short name of faculty
     faculty_model fm3=new faculty_model();
     System.out.println("in");
     String shrt=fm3.make_short("urmi", "deven","Agravat");
     System.out.println(shrt);
 
 }
 
}
