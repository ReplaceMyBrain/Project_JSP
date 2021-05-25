package com.jspproject.bbs.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Copydao {

	public Copydao() {

	}
	public void Copydao() {
        //원본 파일경로
        String oriFilePath = "D:\\coding\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\JSP_project\\img\\062.jpg";
        //복사될 파일경로
        String copyFilePath = "D:\\coding\\JSP_project\\src\\main\\webapp\\img\\062.jpg";
        
        //파일객체생성
        File oriFile = new File(oriFilePath);
        //복사파일객체생성
        File copyFile = new File(copyFilePath);
        
        try {
            
            FileInputStream fis = new FileInputStream(oriFile); //읽을파일
            FileOutputStream fos = new FileOutputStream(copyFile); //복사할파일
            
            int fileByte = 0; 
            // fis.read()가 -1 이면 파일을 다 읽은것
            while((fileByte = fis.read()) != -1) {
                fos.write(fileByte);
            }
            //자원사용종료
            fis.close();
            fos.close();
            
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        
    }
		
	}
}//-------------
