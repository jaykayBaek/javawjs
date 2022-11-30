package study2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.ajax.UserDAO;

public class UserInputCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		String name = request.getParameter("name") == null ? "" : request.getParameter("name");
		String age = request.getParameter("age") == null ? "" : request.getParameter("age");
		String address = request.getParameter("address") == null ? "" : request.getParameter("address");
		
		UserDAO dao = new UserDAO();
		String res = dao.setUserInfo(mid, name, age, address);
		response.getWriter().write(res);
	}

}
