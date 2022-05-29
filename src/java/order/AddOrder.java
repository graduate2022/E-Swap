/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package order;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import product.Product;

public class AddOrder extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        boolean success = false;
        try {

            String cname = request.getParameter("cname");
            String email = request.getParameter("email");
            String productUsername = request.getParameter("productUsername");
            String address = request.getParameter("address");
            String mobile = request.getParameter("mobile");
            boolean isSwap = Boolean.parseBoolean(request.getParameter("isSwap"));
            double productPrice = Double.parseDouble(request.getParameter("price"));
            int pid = Integer.parseInt(request.getParameter("pid"));
            int amount = Integer.parseInt(request.getParameter("amount"));
            String userName = Product.getUsernameForProduct(pid);

            if (isSwap) {
            int pSwapId = Integer.parseInt(request.getParameter("pSwapId")) ;
            String pSwapName = request.getParameter("pSwapName");
            double pSwapPrice = Double.parseDouble(request.getParameter("pSwapPrice"));
            int pSwapAmoun = Integer.parseInt(request.getParameter("pSwapAmoun"));
            double swapTotal = Double.parseDouble(request.getParameter("swapTotal"));
            Order.addSwapOrder(cname, productUsername, email, address, mobile, pid, productPrice, amount, pSwapId, pSwapName,pSwapPrice, pSwapAmoun, swapTotal);
            } else {
                Order.addOrder(cname, productUsername, email, address, mobile, pid, productPrice, amount);
            }
            success = true;
        } catch (Exception ex) {
            System.out.println(ex);
        }

        if (success) {
            response.sendRedirect(request.getContextPath() + "/orderSuccess.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/orderFail.jsp");
        }

    }

}
