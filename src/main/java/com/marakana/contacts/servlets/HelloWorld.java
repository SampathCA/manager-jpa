package com.marakana.contacts.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/*
		 * response.setContentType("text/html"); response.getWriter().println(
		 * "<html><body><h1>Hello World! (Servlet)</h1></body></html>");
		 */

		String[] names = request.getParameter("names").split("\\|");

		/* String name = request.getParameter("name"); */
		request.setAttribute("names", names);

		RequestDispatcher view = request.getRequestDispatcher("/jsp/hello.jsp");
		view.forward(request, response);

	}
}
