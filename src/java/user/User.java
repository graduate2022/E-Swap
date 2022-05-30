/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

import DB.DBUtil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alaa
 */
public class User {

    public String fname;
    public String lname;
    public String uname;
    public String pswd;
    public String address;
    public String mobile;
    public boolean isAdmin;

    public User(String fname, String lname, String uname, String pswd, String address, String mobile, boolean  isAdmin) {

        this.fname = fname;
        this.lname = lname;
        this.uname = uname;
        this.pswd = pswd;
        this.mobile = mobile;
        this.address = address;
        this.isAdmin = isAdmin;

    }

    public static void addUser(String fname, String lname, String uname, String pswd, String address, String mobile, boolean isAdmin) throws SQLException {

        PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("INSERT INTO ALAA.USERS (FNAME ,LNAME , USERNAME , PASSWORD, ADDRESS , MOBILE, ADMIN) VALUES(?,?,?,?,?,?,?)");
        ps.setString(1, fname);
        ps.setString(2, lname);
        ps.setString(3, uname);
        ps.setString(4, pswd);
        ps.setString(5, address);
        ps.setString(6, mobile);
        ps.setBoolean(7, isAdmin);
        ps.executeUpdate();

    }


public static void updateUser(String fname, String lname, String uname, String pswd, String address, String mobile, boolean isAdmin) throws SQLException {

        PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("UPDATE ALAA.USERS SET FNAME=? , LNAME=? , PASSWORD=? , ADDRESS=? , MOBILE=?, ADMIN=? WHERE USERNAME=?");
        ps.setString(1, fname);
        ps.setString(2, lname);
        ps.setString(3, pswd);
        ps.setString(4, address);
        ps.setString(5, mobile);
        ps.setBoolean(6, isAdmin);
        ps.setString(7, uname);

        ps.executeUpdate();
    }

    public static boolean deleteUser(int id) {

        boolean success = false;
        try {
            PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("DELETE FROM ALAA.USERS WHERE id=?");
            ps.setInt(1, id);
            ps.executeUpdate();
            success = true;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return success;

    }
public static ArrayList<User> getAllUsers() {
        ArrayList<User> users = new ArrayList<User>();
        PreparedStatement ps;
        try {
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.USERS");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                users.add(new User(rs.getString("FNAME"), rs.getString("LNAME"), rs.getString("USERNAME"), rs.getString("PASSWORD"),
                        rs.getString("ADDRESS"),rs.getString("MOBILE"), rs.getBoolean("ADMIN")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return users;
    }

public static boolean isUserNameExisted(String username){


        PreparedStatement ps;
        boolean found = false;
        try {
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.USERS WHERE USERNAME=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            found = rs.next();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }


return found;
}

public static User getUserByUname(String username){
        User user = null;
        PreparedStatement ps;
        try {
             ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.USERS WHERE USERNAME=?");
             ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                user= new User(rs.getString("FNAME"), rs.getString("LNAME"), rs.getString("USERNAME"), rs.getString("PASSWORD"),
                        rs.getString("ADDRESS"),rs.getString("MOBILE"), rs.getBoolean("ADMIN"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return user;
}

}
