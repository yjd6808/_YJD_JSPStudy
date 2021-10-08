package example;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QueryString")
public class QueryString extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		String id = "";
		String name = "";
		String vClass = "";
		String phone1 = "";
		String phone2 = "";
		String phone3 = "";

		id = request.getParameter("id");
		name = request.getParameter("name");
		vClass = request.getParameter("class22");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");

		response.getWriter().println("<html><head></head><body>");
		response.getWriter().println("" + "����� �Է��� ����(get ���) �Դϴ�.");
		response.getWriter().printf("<br> ���̵� : <b>%s</b>\n", id);
		response.getWriter().printf("<br> ���� : <b>%s</b>\n", vClass);
		response.getWriter().printf("<br> ��ȭ��ȣ : <b>%s\n", phone1);
		response.getWriter().println("-");
		response.getWriter().println(phone2);
		response.getWriter().println("-");
		response.getWriter().println(phone3);
		response.getWriter().println("</b><br><a href='javascript:history.go(-1)'>�ٽ�</a>");
		response.getWriter().println("</body></html>");
	}
}
