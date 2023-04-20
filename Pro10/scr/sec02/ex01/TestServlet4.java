package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/*.com")
public class TestServlet4 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String context = request.getContextPath();
		String url = request.getRequestURI().toString();
		String mapping = request.getServletPath();
		String uri = request.getRequestURI();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Test Servlet2</title>");
		out.println("</head>");
		out.println("<body bgcolor='pink'>");
		out.println("<b>Test Selvet4입니다.</b><br>");
		out.println("<b>컨텍스트 이름 : " + context +"</b><br>");
		out.println("<b>전체 경로 : " + url +"</b><br>");
		out.println("<b>매핑 이름 : " + mapping +"</b><br>");
		out.println("<b>URI : "+uri +"<br>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
