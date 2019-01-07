package com.net.codejava.email;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 * 
 * @author mrinmay kundu
 * 
 */
@SuppressWarnings("serial")

public class EmailSendingServlet extends HttpServlet {
	private String host;
	private String port;
	private String user;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// reads form fields
		String recipient = "mkundu@mrinmay.com";
		String subject = request.getParameter("subject");
		String content = request.getParameter("message");
		String from = request.getParameter("name");
		String emailfrom = request.getParameter("email");

		String resultMessage = null;

		try {
			EmailUtility.sendEmail(host, port, user, pass, recipient, subject, content, from, emailfrom);
			resultMessage = "Hurray...SUCCESS!!!";
		} catch (Exception ex) {
			ex.printStackTrace();
			resultMessage = "There were an error please try again later";
		} finally {
			System.out.println(resultMessage);
			request.setAttribute("Message", resultMessage);
			RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
			rd.forward(request, response);

		}
	}
}