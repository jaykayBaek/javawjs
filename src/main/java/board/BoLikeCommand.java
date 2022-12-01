package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoLikeCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idxInt = Integer.parseInt(request.getParameter("idx"));
		
		BoardDAO dao = new BoardDAO();
		
		HttpSession session = request.getSession();
		
		String sIdx = session.getAttribute("sIdx")==null? String.valueOf(idxInt)+"/" : session.getAttribute("sIdx") + String.valueOf(idxInt) + "/" ;
		
		String[] sIdxArr = sIdx.split("/");
		
		int cnt = 0;
		for(String sIdxTmp:sIdxArr) {
			if(sIdxTmp.equals(String.valueOf(idxInt)) ) {
				cnt++;
			}
		}
		session.setAttribute("sIdx", sIdx);
		if(cnt != 1) {
			response.getWriter().write("0");
			return;
		}
		
		response.getWriter().write("1");
		dao.setBoLike(idxInt);
			
	}
}
