package pds;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PdsTotalDownCommand implements PdsInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx")==null?0:Integer.parseInt(request.getParameter("idx"));
		
		PdsDAO dao = new PdsDAO();
		PdsVO vo = dao.getIdxSearch(idx);
		
		/*사용자가 지정한 이름*/
		String[] fNames = vo.getfName().split("/");
		/*서버에서 중복 방지 처리를 한 이름*/
		String[] fSNames = vo.getfSName().split("/");
		
		//파일 압축에 필요한 객체를 선언(서버)
		FileInputStream fis = null;
		FileOutputStream fos = null;
		ZipOutputStream zos = null;
		/*클라이언트에 전송하기 위해 필요한 객체*/
		ServletOutputStream sos = null;
		
		String realPath = request.getServletContext().getRealPath("/data/pds/");
		/*zip파일이 저장될 곳 temp에서 주는 이유는 이름이 곂쳐서 서버에 저장될 파일에 덮어 씌울까봐*/
		String zipPath = request.getServletContext().getRealPath("/data/pds/temp/");
		/*zip파일의 이름은 게시글의 제목+.zip*/
		String zipName = vo.getTitle() + ".zip";
		
		/* 파일을 담을 zip 껍데기를 생성. 경로는 temp에(덮어쓸 수 있기 때문에), 제목은 title.zip으로 */
		fos = new FileOutputStream(zipPath+zipName);
		zos = new ZipOutputStream(fos);
		
		
		byte[] b = new byte[2048];
		int data = 0;
		
		for(int i=0; i<fNames.length; i++) {
			File file = new File(realPath+fSNames[i]);
//			File copyAndRename = new File(realPath+fSNames[i]);
			
			/*
			 * copyAndRename ->> file으로 이름을 바꾼다
			 * renameTo(~~)의 것을 file로 변환하겠다.
			 * */
//			file.renameTo(copyAndRename);
			
			/* 변환시킨 것을 zip으로 보내주기 위한 작업 */
			fis = new FileInputStream(file);
			
			/*renameTo를 하지 않아도 알아서 처리해줌*/
			zos.putNextEntry(new ZipEntry(fNames[i]));
			
			/*---------변환끝, 넣기시작-----------*/
			
			//파일을 zip으로 넣어준다.
			while((data = fis.read(b, 0, b.length))!= -1) {
				zos.write(b, 0, data);
			}
			// 찌꺼기까지 보내준다
			zos.flush();
			
			zos.closeEntry();
			fis.close();
		}
		zos.close();
		/*---------서버에서 zip파일 압축 과정 끝 서버에서 클라이언트에 보내는 과정 실행------------*/
		/*서버에서 압축 작업 완료? 압축 파일 클라이언트 전송, 서버에 압축된 파일 삭제한다.*/
		
		/* 전송프로토콜인 http헤더에 필요한 정보를 알렺누다.
		 * 프로토콜형식에 맞도록 헤더에 정보를 제공해 준다. */
		// mimeType : 파일형식(예:텍스트파일? 바이너리?....등등...)  --> 2진 바이너리형식으로 전송해야 한다.
		String mimeType = request.getServletContext().getMimeType(zipName.toString());
		if(mimeType == null) {
			response.setContentType("application/octet-stream");	// 2진 바이너리형식
		}
		
		// 사용하는 브라우저에 대한 정보 : 만약에 인터넷익스플로서(IE)인 경우는 'euc-kr', 나머지는 'utf-8'로 전송한다.
		String downLoadName = "";
		if(request.getHeader("user-agent").indexOf("MSIE") == -1) {
			downLoadName = new String(zipName.getBytes("UTF-8"), "8859_1");
		}
		else {
			downLoadName = new String(zipName.getBytes("EUC-KR"), "8859_1");
		}
		// 헤더 정보를 첨부하여 클라이언트에 전송할 준비를 마친다.
		response.setHeader("Content-Disposition", "attachment;filename="+downLoadName);
		
		/* - - - 준비를 마쳤다! Java로 실제 파일(zip)을 클라이언트로 보내주면 해주면 된다.  - - -*/
		fis = new FileInputStream(zipPath+zipName);
		sos = response.getOutputStream();
		
		/*  0바이트부터 끝까지 돌린다.  */
		while((data = fis.read(b, 0, b.length)) != -1) {
			sos.write(b, 0, data);
		}
		/*찌꺼기 없애주기*/
		sos.flush();

		sos.close();
		fis.close();
		/* - - - 클라이언트 전송 완료, 서버에 존재하는 zip파일을 삭제한다. - - - */
		new File(zipPath+zipName).delete();
		
		/*---다운로드 횟수를 증가해준다.---*/
		dao.setPdsDownNum(idx);
	}
}