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

@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class AddProductAction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            {
//        Part filePart=request.getPart("img");
//        String filePath = filePart.getSubmittedFileName();//Retrieves complete file name with path and directories 
//        Path p = Paths.get(filePath); //creates a Path object
//        String fileName = p.getFileName().toString();//Retrieves file name from Path object
//        InputStream fileContent = filePart.getInputStream();//converts Part data to input stream

  Part filePart;
boolean success = false;
        try {
            filePart = (Part) request.getPart("img");
   String fileName = System.currentTimeMillis() + filePart.getSubmittedFileName();
//    for (jakarta.servlet.http.Part part : request.getParts()) {
      filePart.write("C:\\Users\\96278\\Documents\\NetBeansProjects\\Graduate\\web\\assets\\images\\" + fileName);
//    }

String productName= request.getParameter("ProductName");
double productPrice= Double.parseDouble(request.getParameter("Price"));
String userName = (String) request.getSession().getAttribute("username");
Product.addProduct(productName, fileName, productPrice, userName);
success=true;
        } catch (Exception ex) {
            Logger.getLogger(AddProductAction.class.getName()).log(Level.SEVERE, null, ex);
        } 

if(success){
                            response.sendRedirect(request.getContextPath() + "/productAdded.jsp");

            

}else{

                response.sendRedirect(request.getContextPath() + "/productAddFailed.jsp");

} 


    }

}