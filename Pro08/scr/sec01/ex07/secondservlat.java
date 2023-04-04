package sec01.ex07;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class secondservlat
 */
@WebServlet("/second7")
public class secondservlat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String address=(String)request.getAttribute("address");
		out.println("<html><body>");
		out.println("주소 : "+address);
		out.println("<br>");
		out.println("redirect를 이용한 바인딩실습입니다.");
		out.println("</body></html>");
	}

}
