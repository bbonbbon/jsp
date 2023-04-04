package sec03.ex01;

import java.util.List;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/cset")
public class setServletContext extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		ServletContext context = getServletContext();
		
		List member = new ArrayList();
		member.add("이명진");
		member.add(22);
		
		context.setAttribute("member", member);
		
		out.print("<html><body>");
		out.print("이명진 22");
		out.print("</body></html>");
	}

}
