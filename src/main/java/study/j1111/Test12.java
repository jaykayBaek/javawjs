package study.j1111;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test12 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String[] hobbys =request.getParameterValues("hobby");
//		System.out.println("성명 : " + name);
//		System.out.println("나이 : " + age);
//		System.out.println("성별 : " + gender);
//		System.out.println("취미 : " + hobbys);
//		for(String hobby  : hobbys) {
//			System.out.print(hobby + " / ");
//		}
		
		
		// Request하여 받은 자료를 Response하려고 한다.
		// 웹에 내용을 출력하기 위해서는, PrinterWriter 객체를 통해서 처리한다.
		PrintWriter out = response.getWriter();
		
		out.println("안녕... 이곳은 서블릿이야!");
		out.println("name ? " + name + "<br/>");
		out.println("age ? " + age + "<br/>");
		out.println("gender ? " + gender + "<br/>");
		out.println("hobby ? ");
		if(hobbys != null) {
			for(String hobby : hobbys) {
				out.println(hobby);
			}
		}else {
//			out.println("취미가 선택되어있지 않습니다.");
			out.println("<script>");
			out.println("alert('취미는 하나 이상 선택하셔야 합니다.');");
			/*
			 * history.back()? 뒤로가기(초기화가 안 됨)
			 * location.href='경로'? 해당 경로로 감(초기화)
			 * */
//			out.println("history.back();");
			out.println("location.href='"+request.getContextPath()+"/study/1111/test12.jsp';");
			out.println("</script>");
		}
			
		out.println();
		out.println("<p><a href='/javawjsp/study/1111/test12.jsp'>돌아가기</a></p>");
//		out.println("<p><a href='request.getContextPath()/test12.jsp'>돌아가기</a></p>");
	}
}
