/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateData extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        boolean success = false;
        try {

            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String uname = (String) request.getSession().getAttribute("username");
            String pswd = request.getParameter("pswd");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");
            User.updateUser(fname, lname, uname, pswd, address, mobile, false);
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
