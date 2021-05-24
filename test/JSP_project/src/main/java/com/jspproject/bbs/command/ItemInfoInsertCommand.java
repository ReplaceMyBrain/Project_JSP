package com.jspproject.bbs.command;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspproject.bbs.dao.ItemInfoDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



public class ItemInfoInsertCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		String realPath1 = request.getServletContext().getRealPath("/img"); 
		 //위 경로의 디렉토리가 존재하지 않으면 새로 생성 
		File dir1 = new File(realPath1); if (!dir1.exists()) { dir1.mkdirs(); } 
		// 파일크기 제한 설정 (15mb) 
		int sizeLimit1 = 15 * 1024 * 1024; 
		String file = "";
		String originalFile="";
		// MultipartRequest 객체를 생성하면 파일 업로드 수행 
		MultipartRequest multipartRequest1 = null;
		try {
			multipartRequest1 = new MultipartRequest(request, realPath1, sizeLimit1, "utf-8", new DefaultFileRenamePolicy());
			
			String I_TITLE = multipartRequest1.getParameter("I_TITLE");
			String I_CONTENT = multipartRequest1.getParameter("I_CONTENT");
			String I_IMAGE = multipartRequest1.getParameter("I_IMAGE");
			String I_CATEGORY = multipartRequest1.getParameter("I_CATEGORY");
			
			
			Enumeration<?> files = multipartRequest1.getFileNames();
			String str = (String)files.nextElement();
			String test = "D:\\coding\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\JSP_project\\img\\062.jpg";
			file = test+ multipartRequest1.getFilesystemName(str);
			originalFile = multipartRequest1.getOriginalFileName(str);
			
			ItemInfoDao itemInfoDao = new ItemInfoDao();
			itemInfoDao.write(I_TITLE, I_CONTENT, file, I_CATEGORY);
			
		} catch (IOException e1) {
			e1.printStackTrace();
		} 


	}

}
