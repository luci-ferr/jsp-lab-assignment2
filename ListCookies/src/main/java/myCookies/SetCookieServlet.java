package myCookies;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SetCookieServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Create a new cookie (first cookie)
	    Cookie cookie1 = new Cookie("username", "sonu_sharma");
	    cookie1.setMaxAge(3600); // 1 hour
	    response.addCookie(cookie1);

	    // Create a new cookie (second cookie)
	    Cookie cookie2 = new Cookie("course", "mca");
	    cookie2.setMaxAge(3600); // 1 hour
	    response.addCookie(cookie2);

	    response.getWriter().println("Cookies set successfully!");
	}

}
