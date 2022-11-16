package j1116;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.codegen.TypeAnnotationCodeStream;

@WebServlet("/j1116/Test2/4")
public class Test2_4 extends HttpServlet{
	
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
		
		// 서버에 get방식으로의 전송방법 스프링에서도이렇게하니유의
//		response.sendRedirect(request.getContextPath()+"/study/1116/test2Ok3.jsp?vo="+vo);
		
		// 저장소(request)를 활용한 forwarding
		//setAttribute(뒤의 객체를 담아갈 변수, 값을 저장한 객체 변수)
		//setAttribute=저장소(모델)에 값을 담음
		request.setAttribute("vo", vo);
		//저장소에 값을 담은 것을 요청하여 forwarding한다. 그 명령어가 getRequestDispatcher ()괄호안 주소로 보낸다
		//vo객체를 담기위해 저장소에 담는다. dispatcher의 주소로 보낸다. 이것을 보내기 위해 header로 보내줘야 한다. 그러기 위해서는 fowarding을 해야한다.
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/study/1116/test2Ok4_2.jsp");
		//저장소에 담은 것을 응답한다. dispatcher.forward하면, 웹서버로 전송됨.
//		dispatcher.forward(request, response);
		
		//front controller 앞단에서 교통정리
		String viewPage = "/study/1116/test2Ok4_2.jsp";
		request.getRequestDispatcher(viewPage).forward(request, response);
	}
}
