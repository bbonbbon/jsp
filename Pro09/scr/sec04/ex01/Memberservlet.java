package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Member8")  // 수정
public class Memberservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");   
		
		response.setContentType("text/html;charset=utf-8");
	    PrintWriter out = response.getWriter();	
	    MemberDAO dao = new MemberDAO();
	    
	    String command=request.getParameter("command");
	    if(command!= null && command.equals("addMember")){
			 String _id = request.getParameter("id");
			 String _pwd = request.getParameter("pwd");
			 String _name = request.getParameter("name");
			 String _email = request.getParameter("email");
			 
			 MemberVO vo=new MemberVO();
			 vo.setId(_id);
			 vo.setPwd(_pwd);
			 vo.setName(_name);
			 vo.setEmail(_email);
		     dao.addMember(vo);
	    }  // 추가
	    else if(command!= null && command.equals("delMember")) {
	    	  String id = request.getParameter("id");
	    	  dao.delMember(id);
	    }
	    
	    // 추가
	    List membersList = dao.listMembers();   
		
	    request.setAttribute("membersList", membersList);
		RequestDispatcher dispatch = request.getRequestDispatcher("viewMembers");
		dispatch.forward(request, response);
	}
}