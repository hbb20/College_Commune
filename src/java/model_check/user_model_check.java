/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model_check;
import c_c_db_package.user_model;
/**
 *
 * @author HARSH BHAKT
 */
public class user_model_check {
    public static void main(String arg[])
    {
       user_model um=null;
       String full_dept=user_model.get_full_dept("IT");
       System.out.println(full_dept);
       
    }
}
