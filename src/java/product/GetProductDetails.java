/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package product;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import jakarta.servlet.http.Part;
import org.json.JSONObject;


public class GetProductDetails extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            {

boolean success = false;
        try {

int  pid = Integer.parseInt(request.getParameter("id"));
String userName = (String) request.getSession().getAttribute("username");

Product product = Product.getProductByIdForCurrentUser(pid, userName);
if(product!=null){
JSONObject jsonProduct = new JSONObject();
jsonProduct.put("name", product.name);
jsonProduct.put("price", product.price);

PrintWriter out = response.getWriter();
response.setContentType("application/json");
response.setCharacterEncoding("UTF-8");
out.print(jsonProduct);
out.flush();
success=true;
}
        } catch (Exception ex) {
            Logger.getLogger(AddProductAction.class.getName()).log(Level.SEVERE, null, ex);
        } 

if(success){
response.setStatus(200);
}else{
response.setStatus(404);
} 
    }

}