package member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemLoginOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null?"":request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null?"":request.getParameter("pwd");
//		 * 쿠키 관련 처리
		String idCheck = request.getParameter("idCheck")==null?"":request.getParameter("idCheck");
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getLoginCheck(mid);
		
		if(vo == null || !pwd.equals(vo.getPwd())) {
			request.setAttribute("msg", "loginNo");
			request.setAttribute("url", request.getContextPath()+"/memLogin.mem");
			return;
		}
		
		// 로그인 성공 시에 처리해야 할 부분(1. 주요필드를 세션에 저장, 2. 오늘 방문 횟수처리, 3. 방문수와 방문 포인트 증가, 4. 쿠키에 아이디저장 유무)
		//1.
		HttpSession session = request.getSession();
		session.setAttribute("sMid", mid);
		session.setAttribute("sNickName", vo.getNickName());
		session.setAttribute("sLevel", vo.getLevel());
		
		//2~3
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strNow = sdf.format(now);
		
		//오늘 처음 방문하였으면, db의 방문카운트를 0으로 초기화시켜야 한다.
		if(!vo.getLastDate().substring(0, 10).equals(strNow)) {
			dao.setTodayCntUpdate(mid);
			vo.setTodayCnt(0);
		}
		
		//방문 카운트, 방문포인트를 가져와서 넘어온 방문카운터가 5가 초과하면 방문포인트는 증가하면 안 된다. 초과하지 않으면 가져온 방문포인트+10을 넘긴다. 
		int nowTodayPoint = 0;
		if(vo.getTodayCnt()>5) {
			nowTodayPoint = vo.getPoint();
		}
		else {
			nowTodayPoint = vo.getPoint() + 10;
			
		}
		//오늘 재방문이라면, '총방문수', '오늘방문수', '포인트', '누적처리'
		dao.setMemTotalUpdate(mid, nowTodayPoint);
		
		// 4. 쿠키에 저장하기
		Cookie cookieMid = new Cookie("cMid", mid);
		if(idCheck.equals("on")) {
			//쿠키만료시간을 7일을 주었음
			cookieMid.setMaxAge(60*60*24*7);
		}
		else {
			cookieMid.setMaxAge(0);
		}
		response.addCookie(cookieMid);
		request.setAttribute("msg", "loginOk");
		request.setAttribute("url", request.getContextPath()+"/memMain.mem");
		request.setAttribute("val", vo.getNickName());
	}
}
