/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

import DB.DBUtil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alaa
 */
public class UserUtil {
    

public static boolean validateLogin(String usernsme, String pass){
boolean status=false;  
try{  

PreparedStatement ps=DBUtil.getConnecttion().prepareStatement(  
    "select * from user432 where email=? and pass=?");  
  
ps.setString(1,usernsme);  
ps.setString(2, pass);  
              
ResultSet rs=ps.executeQuery();  
status=rs.next();  
              
}catch(Exception e){}  
  
return status;  
  

}
}
