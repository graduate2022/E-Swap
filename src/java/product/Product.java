/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package product;

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
public class Product {

    public String name;
    public String userName;
    public String imgName;
    public int id;
    public double price;

    public Product(String name, String userName, String imgName, int id, double price) {

        this.id = id;
        this.price = price;
        this.imgName = imgName;
        this.userName = userName;
        this.name = name;

    }

    public static void addProduct(String name, String imgName, double price, String userName) throws SQLException {

        PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("INSERT INTO ALAA.PRODUCTS (NAME, PRICE, USERNAME, IMGNAME) VALUES(?,?,?,?)");

        ps.setString(1, name);
        ps.setDouble(2, price);
        ps.setString(3, userName);
        ps.setString(4, imgName);

        ps.executeUpdate();

    }

    public static boolean deleteProduct(int id) {

        boolean success = false;
        try {
            PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("DELETE FROM ALAA.PRODUCTS WHERE id=?");
            ps.setInt(1, id);
            ps.executeUpdate();
            success = true;
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }

        return success;

    }

    public static boolean updateProduct(String name, String imgName, double price, Integer id) {

        boolean success = false;
        if (id != null) {
            try {
                PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("UPDATE ALAA.PRODUCTS SET NAME=?, PRICE=?" + (imgName != null ? ", IMGNAME='" + imgName + "'" : "") + " WHERE ID=?");
                ps.setString(1, name);
                ps.setDouble(2, price);
                ps.setInt(3, id);
                ps.executeUpdate();
                success = true;

            } catch (SQLException ex) {

                Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);

            }
        }
        return success;
    }

    public static ArrayList<Product> getCurrentUserProducts(String userName) {

        ArrayList<Product> products = new ArrayList<Product>();

        PreparedStatement ps;
        try {
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.PRODUCTS WHERE USERNAME=?");
            ps.setString(1, userName);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                products.add(new Product(rs.getString("name"), rs.getString("username"), rs.getString("imgname"), rs.getInt("id"), rs.getDouble("price")));

            }
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }

        return products;
    }

    public static ArrayList<Product> getAllProducts() {

        ArrayList<Product> products = new ArrayList<Product>();

        PreparedStatement ps;
        try {
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.PRODUCTS");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                products.add(new Product(rs.getString("name"), rs.getString("username"), rs.getString("imgname"), rs.getInt("id"), rs.getDouble("price")));

            }
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }

        return products;
    }

    public static Product getProductById(int id) {

        Product product = null;

        PreparedStatement ps;
        try {
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.PRODUCTS where id=?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            rs.next();
            product = new Product(rs.getString("name"), rs.getString("username"), rs.getString("imgname"), rs.getInt("id"), rs.getDouble("price"));
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }

        return product;
    }

  public static Product getProductByIdForCurrentUser(int id, String userName) {

        Product product = null;
        PreparedStatement ps;
        try {
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.PRODUCTS where id=? and username=?");
            ps.setInt(1, id);
            ps.setString(2, userName);
            ResultSet rs = ps.executeQuery();
            rs.next();
            product = new Product(rs.getString("name"), rs.getString("username"), rs.getString("imgname"), rs.getInt("id"), rs.getDouble("price"));
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }

        return product;
    }

public static String getUsernameForProduct(int pid){
Product product = getProductById(pid);
return product.userName;
}
}
