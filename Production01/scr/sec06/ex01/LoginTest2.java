package sec06.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginTest2
 */
@WebServlet("/LoginTest2")
public class LoginTest2 extends HttpServlet {
	
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init 메서드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destory 메서드 호출");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		System.out.println("아이디 : "+ user_id);
		System.out.println("비밀번호 : "+ user_pw);
		
		if(user_id!= null &&(user_id.length()!=0)) {
			if(user_id.equals("admin")) {
				out.print("<html>");
				out.print("<body>");
				out.print( "<font size='12'>관리자로 로그인 하셨습니다!! </font>");
				out.print("<br>");
				out.print("<input tepe=button value='회원정보 수정하기' />");
				out.print("<input tepe=button value='회원정보 삭제하기' />");
				out.print("</body>");
				out.print("</html>");
			} else {
				out.print("<html>");
				out.print("<body>");
				out.print( user_id + "님!! 로그인 하셨습니다.");
				out.print("</body>");
				out.print("</html>");
			}
		}else {
			out.print("<html>");
			out.print("<body>");
			out.print( "아이디를 입력하세요!");
			out.print("<br>");
			out.print("<a href='http://localhost:8090/Production01/test1/login.html'> 로그인 창으로 이동 </a>");
			
			out.print("</body>");
			out.print("</html>");
			}
	}
}