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
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class UpdateProductAction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        Part filePart;
        String fileName = null;
        String originalFileName = null;

        boolean success = false;
        try {
            filePart = (Part) request.getPart("img");
            originalFileName = filePart!=null?filePart.getSubmittedFileName():null;
            fileName = originalFileName != null ? (System.currentTimeMillis() + originalFileName) : null;
            if (fileName != null) {
                filePart.write("C:\\Users\\96278\\Documents\\NetBeansProjects\\Graduate\\web\\assets\\images\\" + fileName);
            }
            String productName = request.getParameter("ProductName");
            double productPrice = Double.parseDouble(request.getParameter("Price"));
            Integer id = Integer.parseInt(request.getParameter("id"));
            success = Product.updateProduct(productName, fileName, productPrice, id);
        } catch (Exception ex) {
            Logger.getLogger(AddProductAction.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (success) {

            response.setStatus(200);
            if (originalFileName != null) {
                response.setContentType("text/xml");
                PrintWriter writer;
                try {
                    writer = response.getWriter();
                    writer.append(fileName);

                } catch (IOException ex) {
                    Logger.getLogger(UpdateProductAction.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        } else {
            response.setStatus(400);

        }

    }

}
