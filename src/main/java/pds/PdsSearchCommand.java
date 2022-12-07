package pds;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PdsSearchCommand implements PdsInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = request.getParameter("pdsSearch") == null ? "" : request.getParameter("pdsSearch");
		System.out.println(search);
		PdsDAO dao = new PdsDAO();
		
		int recCnt = dao.searchRecCnt(search);
		
		ArrayList<PdsVO> vos = dao.getPdsSearch(search);
		
		request.setAttribute("vos", vos);
		request.setAttribute("recCnt", recCnt);
	}
}