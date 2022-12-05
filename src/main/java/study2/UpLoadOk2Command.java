package study2;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpLoadOk2Command implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서버에 저장될 파일의 경로
		String realPath = request.getServletContext().getRealPath("/data/pdstest");
		System.out.println("realPath : " + realPath);
		int maxSize = 1024 * 1024 * 10; //서버에 저장할 최대 용량? 10MB로 하겠다.(1회 업로드 할 때)
		String encoding = "UTF-8";

		//파일 업로드 처리 끝...
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		//데이터를 열거형으로 받아오고자 한다
//		Enumeration e = multipartRequest.getParameterNames(); 사용x
//		Enumeration e = multipartRequest.getFileNames();      이걸로 사용
//		
//		while(e.hasMoreElements()) {
//			String name = ""+e.nextElement();
//			System.out.println("name : " + name);
//		}
		String file = "";
		String originalFileName = "";
		String fileSystemName = "";
		//getFileNames() 객체 배열 형식을 자료를 받기 위해 jsp의 name이 넘어옴
		Enumeration fileNames = multipartRequest.getFileNames();
		while(fileNames.hasMoreElements()) {
			//업로드시의 필드네임
			file =""+fileNames.nextElement();
			originalFileName = multipartRequest.getOriginalFileName(file);
			fileSystemName=multipartRequest.getFilesystemName(file);
			System.out.println("업로드 시 원본 파일명 : " + originalFileName);
			System.out.println("서버에 저장된 실제 파일명 : " + fileSystemName);
		}
		
		int flag = multipartRequest.getParameter("upLoadFlag") == null ? 2 : Integer.parseInt(multipartRequest.getParameter("upLoadFlag"));
		//스택(LIFO)로 출력됨
		if(fileSystemName.equals("")) {
			request.setAttribute("msg", "upLoad1No");
		}
		else {
			request.setAttribute("msg", "upLoad1Ok");
		}
		
		
		request.setAttribute("msg", "upLoad1Ok");
		
		if(flag==2) {
			request.setAttribute("url", request.getContextPath()+"/upLoad2.st");
		}
		else if(flag==3) {
			request.setAttribute("url", request.getContextPath()+"/upLoad3.st");
		}
		else if(flag==4) {
			request.setAttribute("url", request.getContextPath()+"/upLoad4.st");
		}
	}

}
