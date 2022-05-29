/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import org.json.JSONObject;

public class CheckUsername extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        boolean success = false;
        try {

            String uname = request.getParameter("uname");
            boolean found = User.isUserNameExisted(uname);
            JSONObject jsonObj = new JSONObject();
            jsonObj.put("found", found);
            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print(jsonObj);
            out.flush();
            success = true;
        } catch (Exception ex) {
            System.out.println(ex);
        }

        if (success) {
            response.setStatus(200);
        } else {
            response.setStatus(404);
        }
    }

}
