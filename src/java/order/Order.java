/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package order;

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
public class Order {

    public String customerName;
    public String productUsername;
    public String email;
    public String address;
    public String mobileNumber;

    public Boolean isSwap = false;
    public String pSwapName;
    public Double pSwapPrice;
    public Integer pSwapAmount;
    public Double swapTotal;
    public Integer pSwapId;


    public int id;
    public int productId;
    public int amount;

    public double price;
    public double total;

    public Order(String customerName, String productUsername, String email, String address, String mobileNumber,
                 int productId, double price, int amount, int id,
                 Boolean isSwap, String pSwapName, Double pSwapPrice, Integer pSwapAmount,Double swapTotal, Integer pSwapId) {


        this.isSwap = isSwap;
        this.pSwapName = pSwapName;
        this.pSwapPrice = pSwapPrice;
        this.pSwapAmount = pSwapAmount;
        this.swapTotal= swapTotal;
        this.pSwapId = pSwapId;


        this.productId = productId;
        this.productUsername = productUsername;
        this.price = price;
        this.customerName = customerName;
        this.email = email;
        this.address = address;
        this.mobileNumber = mobileNumber;
        this.amount= amount;
        this.id=id;
        this.total = price*amount;

    }


    public static void addOrder(String customerName, String productUsername, String email, String address, String mobileNumber, int productId, double price, int amount) throws SQLException {

        PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("INSERT INTO ALAA.ORDERS (CNAME ,PRODUCTUSERNAME , EMAIL , ADDRESS , MOBILE, PRICE , PID, AMOUNT, TOTAL) VALUES(?,?,?,?,?,?,?,?,?)");
        ps.setString(1, customerName);
        ps.setString(2, productUsername);
        ps.setString(3, email);
        ps.setString(4, address);
        ps.setString(5, mobileNumber);
        ps.setDouble(6, price);
        ps.setInt(7, productId);
        ps.setInt(8, amount);
        ps.setDouble(9, price *amount);
        ps.executeUpdate();

    }

  public static void addSwapOrder(String customerName, String productUsername, String email, 
                                  String address, String mobileNumber, int productId, 
                                  double price, int amount,
                                  int pSwapId, String pSwapName, double pSwapPrice, int pSwapAmount, double swapTotal) throws SQLException {

        PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("INSERT INTO ALAA.ORDERS (CNAME ,PRODUCTUSERNAME ,"
                               + " EMAIL , ADDRESS , MOBILE, PRICE , PID, AMOUNT, TOTAL,"
                               + " SWAPORDER, PRODUCTSWAPID, PRODUCTSWAPNAME, PRODUCTSWAPPRICE, PRODUCTSWAPAMOUNT, SWAPTOTAL) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

        ps.setString(1, customerName);
        ps.setString(2, productUsername);
        ps.setString(3, email);
        ps.setString(4, address);
        ps.setString(5, mobileNumber);
        ps.setDouble(6, price);
        ps.setInt(7, productId);
        ps.setInt(8, amount);
        ps.setDouble(9, price *amount);

        ps.setBoolean(10, true);
        ps.setInt(11, pSwapId);
        ps.setString(12, pSwapName);
        ps.setDouble(13, pSwapPrice);
        ps.setInt(14, pSwapAmount);
        ps.setDouble(15, swapTotal);

        ps.executeUpdate();

    }

    public static boolean deleteOrder(int id) {

        boolean success = false;
        try {
            PreparedStatement ps = DBUtil.getConnecttion().prepareStatement("DELETE FROM ALAA.ORDERS WHERE id=?");
            ps.setInt(1, id);
            ps.executeUpdate();
            success = true;
        } catch (SQLException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        }

        return success;

    }


    public static ArrayList<Order> getOrdersForCurrentUser(String userName, String orderType) {

        ArrayList<Order> orders = new ArrayList<Order>();

        PreparedStatement ps;
        try {

            boolean isSwap = false;
            if (orderType != null && !orderType.equalsIgnoreCase("all")) {

                if (orderType.equalsIgnoreCase("swap")) {
                    isSwap = true;
                }
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.ORDERS WHERE PRODUCTUSERNAME=? and SWAPORDER=?");
                ps.setString(1, userName);
                ps.setBoolean(2, isSwap);
            }else{
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.ORDERS WHERE PRODUCTUSERNAME=?");
                ps.setString(1, userName);
}
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                orders.add(new Order(rs.getString("CNAME"), rs.getString("PRODUCTUSERNAME"),rs.getString("EMAIL"), rs.getString("ADDRESS"), 
                                     rs.getString("MOBILE"), rs.getInt("PID"), rs.getDouble("PRICE"), rs.getInt("AMOUNT"), rs.getInt("ID"),
                                     rs.getBoolean("SWAPORDER"), rs.getString("PRODUCTSWAPNAME"), rs.getDouble("PRODUCTSWAPPRICE"),
                                     rs.getInt("PRODUCTSWAPAMOUNT"), rs.getDouble("SWAPTOTAL"), rs.getInt("PRODUCTSWAPID") ));

            }
        } catch (SQLException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        }

        return orders;
}

    public static ArrayList<Order> getAllOrders() {

        ArrayList<Order> orders = new ArrayList<Order>();

        PreparedStatement ps;
        try {
            ps = DBUtil.getConnecttion().prepareStatement("SELECT * FROM ALAA.ORDERS");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                orders.add(new Order(rs.getString("CNAME"), rs.getString("PRODUCTUSERNAME"),rs.getString("EMAIL"), rs.getString("ADDRESS"), 
                                     rs.getString("MOBILE"), rs.getInt("PID"), rs.getDouble("PRICE"), rs.getInt("AMOUNT"), rs.getInt("ID"),
                                     rs.getBoolean("SWAPORDER"), rs.getString("PRODUCTSWAPNAME"), rs.getDouble("PRODUCTSWAPPRICE"),
                                     rs.getInt("PRODUCTSWAPAMOUNT"), rs.getDouble("SWAPTOTAL"), rs.getInt("PRODUCTSWAPID") ));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Order.class.getName()).log(Level.SEVERE, null, ex);
        }

        return orders;
    }

   
}
