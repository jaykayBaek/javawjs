package study.homework;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/homework/Logout")
public class H1117_Logout extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = ""+session.getAttribute("sEmail");
		int sw = (int)session.getAttribute("sSw");
		System.out.println("ssw?" + (sw+101));
		
		session.invalidate();
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('"+email+"님 로그아웃 되셨습니다.');");
		out.println("location.href='"+request.getContextPath()+"/waffle/login/login.jsp';");
		out.println("</script>");
	}
}
