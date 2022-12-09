package study2;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Calendar1Command implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 오늘 날짜 처리(저장)
		Calendar calToday = Calendar.getInstance();
		int toYear = calToday.get(Calendar.YEAR);
		int toMonth = calToday.get(Calendar.MONTH);
		int toDay = calToday.get(Calendar.DATE);
		
		/* ---
		 * 
		 * 화면에 보여줄 해당 '년/월'을 셋팅
		 * 월은 0월부터 시작, day는 일요일 1부터 토요일7으로 끝남
		 * 
		 * ---*/
		Calendar calView = Calendar.getInstance();
		int yy = request.getParameter("yy")==null?calView.get(Calendar.YEAR):Integer.parseInt(request.getParameter("yy"));
		int mm = request.getParameter("mm")==null?calView.get(Calendar.MONTH):Integer.parseInt(request.getParameter("mm"));
		
		//앞에서 넘어온 변수(yy, mm)의 값이 '1월', '12월' 이라면 아래와 같이 편집한다(1월은 '0', 12월은 '11'로)
		if(mm < 0) {
			yy--;
			mm = 11;
		}
		if(mm>11) {
			yy++;
			mm = 0;
		}
		
		/*해당 '년/월'의 1일을 기준으로 셋팅시켜 준다.*/ 
		calView.set(yy, mm, 1);
		
		/* 앞에서 셋팅한 해당 년/월의 1일에 해당하는 요일값을 숫자로 가져온다.*/
		int startWeek = calView.get(Calendar.DAY_OF_WEEK);
		int lastDay = calView.getActualMaximum(Calendar.DAY_OF_MONTH);
//		System.out.println("해당 월의 첫 번째 1의 요일을 숫자로 반환 : " + startWeek);
//		System.out.println("해당 월의 첫 번째 1의 요일을 숫자로 반환 : " + lastDay);
		
		/* --- 화면에 보여줄 달력의 해당 내역을 저장소에 저장한다 ---*/
		request.setAttribute("yy", yy);
		request.setAttribute("mm", mm);
		request.setAttribute("startWeek", startWeek);
		request.setAttribute("lastDay", lastDay);
		
		/* --- 오늘 날짜를 저장소에 담아서 넘겨준다. --- */
		request.setAttribute("toYear", toYear);
		request.setAttribute("toMonth", toMonth);
		request.setAttribute("toDay", toDay);
	}
}