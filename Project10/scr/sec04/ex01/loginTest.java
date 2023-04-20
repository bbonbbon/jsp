package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login2")
public class loginTest extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		
		// 로그인 창에서 전송된 아이디와 비밀번호를 가지고 옴.
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		LoginImpl loginuser=new LoginImpl(user_id,user_pw);
		if(session.isNew()) {
			session.setAttribute("loginuser", loginuser);
		}
		out.println("<head>");
		out.println("<script tyoe='text/javascript'>");
		out.println("setTimeout('history.go(0);', 5000)");
		out.println("</script>");
		out.println("</head>");

		out.println("<body>");
		out.println("아이디는 " + loginuser.user_id +"<br>");
		out.println("총 접속자수는 " + LoginImpl.total_user +"<br>");
		out.println("</body>");
		
	}
}