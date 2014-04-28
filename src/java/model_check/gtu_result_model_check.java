/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model_check;

import c_c_db_package.gtu_result;

/**
 *
 * @author HARSH BHAKT
 */
public class gtu_result_model_check {
    public static void main(String arg[])
    {
      
        /**  blank result additing
        gtu_result gr=new gtu_result();
        boolean isDone=gr.add_blank_gtu_result("100010116041");
        if(isDone)
        {
            System.out.println("New entry has been placed");
        }
        else
        {
            System.out.println("Some error occured");
        }**/
        
        
        
        gtu_result gr=new gtu_result("100010116004", 2.34, 4.56, 6.54, 7.86, 9.88, 6.78, 8.98, 0);
        boolean isDone=gr.add_gtu_result();
         if(isDone)
        {
            System.out.println("result has been updated for "+gr.getUser_id());
        }
        else
        {
            System.out.println("Some error occured");
        }
        
    }
}
