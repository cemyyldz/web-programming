package odevkodlari;

import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        //String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");

        // Kullanıcıyı tanıyıp cookie oluştur
        if (rememberMe != null && rememberMe.equals("on")) {
            Cookie cookie = new Cookie("username", username);
            cookie.setMaxAge(60 * 60 * 24 * 30); // Cookie bir ay boyunca geçerli olacak şekilde ayarlanır
            response.addCookie(cookie);
        }

        // Kullanıcıyı yönlendir
        response.sendRedirect("homepage.jsp");
    }
}