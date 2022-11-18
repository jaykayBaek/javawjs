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
import javax.websocket.Session;

@WebServlet("/homework/Log_check")
public class H1117_LogCheck extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("input_email") ;
		String pwd = request.getParameter("input_pwd");
		String isCheck = request.getParameter("input_email_save")==null?"":request.getParameter("input_email_save");
		int sw = 0;
		if(!isCheck.equals("")) {
			sw = 1;
		}else {
			sw = 0;
		}
		HttpSession session = request.getSession();
		session.setAttribute("sSw", sw);
		
		PrintWriter out = response.getWriter();
		
		if((email.equals("admin") && pwd.equals("1234")) ||(email.equals("jaykaybaek@gmail.com") && pwd.equals("1234"))) {
			Cookie cookie = new Cookie("cEmail", email);
			switch (sw) {
				case 1:
					cookie.setPath("/");		//전체경로에서 사용하고자 할 때 설정. board에서 사용할거면 /board로
					cookie.setMaxAge(60*5);		// 쿠키의 만료시간을 5분으로 설정
					response.addCookie(cookie);
					break;
				case 0:
					if(cookie.getName().equals("cEmail")){
						cookie.setPath("/");
						cookie.setMaxAge(0);
						response.addCookie(cookie);
					}
					break;

			}
			
			session = request.getSession();
			session.setAttribute("sEmail", email);
			
			out.println("<script>");
			out.println("alert('"+email+"님 로그인 되셨습니다.');");
			out.println("location.href='"+request.getContextPath()+"/waffle/login/loginMember.jsp';");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('아이디와 비밀번호를 확인하세요!');");
			out.println("history.back();");
			out.println("</script>");
		}
	}
}
