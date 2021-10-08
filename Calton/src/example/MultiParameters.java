package example;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myUtil.HanConv;

/**
 * Servlet implementation class MultiParameters
 */
@WebServlet("/MultiParameters")
public class MultiParameters extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=euc_kr");
		
		String[] parameters = request.getParameterValues("item");
		PrintWriter out = response.getWriter();
		
		if (parameters == null) {
			out.println("���õ� �׸��� �����ϴ�.");
			return;
		}
		
		for (int i = 0; i < parameters.length; i++) {
			out.println("���õ� �׸� : " + HanConv.toKor(parameters[i]) + "�Դϴ�.<br>");
		}
	}
}
