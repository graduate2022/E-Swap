/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddAdmin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        boolean success = false;
        try {
            Boolean isAdmin = (Boolean) request.getSession().getAttribute("isAdmin");
            if (isAdmin == null || !isAdmin) {
                request.getRequestDispatcher("/no-access.jsp").forward(request, response);
            }
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String uname = request.getParameter("uname");
            String pswd = request.getParameter("pswd");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");
            User.addUser(fname, lname, uname, pswd, address, mobile, true);
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
