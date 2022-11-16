package j1116;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1116/Test2/3")
public class Test2_3 extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name")==null? "" : request.getParameter("name");
		String hakbun = request.getParameter("hakbun")==null? "" : request.getParameter("hakbun");
		int kor = request.getParameter("kor")==null? 0 : Integer.parseInt(request.getParameter("kor"));
		int eng = request.getParameter("eng")==null? 0 : Integer.parseInt(request.getParameter("eng"));
		int math = request.getParameter("math")==null? 0 : Integer.parseInt(request.getParameter("math"));
		int soc = request.getParameter("soc")==null? 0 : Integer.parseInt(request.getParameter("soc"));
		int sci = request.getParameter("sci")==null? 0 : Integer.parseInt(request.getParameter("sci"));
		
		int tot = kor+eng+math+soc+sci;
		double avg = tot/5.0;
		int intAvg = (int)(avg / 10.0);
		String grade = "F";
		
		switch (intAvg) {
			case 10:
			case 9:
				grade = "A";
				break;  
			case 8:     
				grade = "B";
				break;  
			case 7:     
				grade = "C";
				break;  
			case 6:     
				grade = "D";
				break;
		}
		
		// VO에 값을 저장하고자 한다.
		Test2VO vo = new Test2VO(name, hakbun, kor, eng, math, soc, sci, tot, avg, grade);
		System.out.println(vo);
		//setter를 이용한 값의 저장?
//		vo.setHakbun(hakbun);
//		vo.setName(name);
		
		// 서버에 get방식으로의 전송방법 스프링에서도이렇게하니유의
		response.sendRedirect(request.getContextPath()+"/study/1116/test2Ok3.jsp?vo="+vo);
	}
}
