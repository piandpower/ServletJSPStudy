package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Fruit;

@WebServlet("/FruitdoGet")
public class FruitdoGet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Fruit f = new Fruit("いちご", 700);
		ServletContext application = this.getServletContext();
		application.setAttribute("fruit", f);
//		HttpSession session = request.getSession();
//		session.setAttribute("fruit", f);
//		request.setAttribute("fruit", f);
		RequestDispatcher d = request.getRequestDispatcher("/show3.jsp");
		d.forward(request, response);
	}
}