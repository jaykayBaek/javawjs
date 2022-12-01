package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;
import member.MemberVO;

public class BoInputCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mid = ""+session.getAttribute("sMid");
		
		//글을 쓸 때에는 글쓴이의 정보들을 넘겨줘야 하기 때문에 컨트롤러를 지나가야 했고,
		//해당한 정보를 가져오기 위해서 input command에서 memberdao, vo를 호출했다.
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getLoginCheck(mid);
		request.setAttribute("email", vo.getEmail());
		request.setAttribute("homePage", vo.getHomePage());
	}
}
