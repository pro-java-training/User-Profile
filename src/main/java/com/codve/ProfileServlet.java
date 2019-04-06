package com.codve;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Hashtable;

@WebServlet(
        name = "profileServlet",
        urlPatterns = "/profile"
)
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response )
        throws ServletException, IOException {
        User user = new User();
        user.setUserId(1001L);
        user.setUsername("root");
        user.setFirstName("John");
        user.setLastName("Smith");

        Hashtable<String, Boolean> permissions = new Hashtable<>();
        permissions.put("user", true);
        permissions.put("admin", true);
        user.setPermissions(permissions);

        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/jsp/view/profile.jsp")
                .forward(request, response);
    }
}
