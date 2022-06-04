
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


public class SearchProductByName extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            {

boolean success = false;
        try {

String pname = request.getParameter("name");

JSONObject products = Product.searchProductByName(pname);
if(products!=null){

PrintWriter out = response.getWriter();
response.setContentType("application/json");
response.setCharacterEncoding("UTF-8");
out.print(products);
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