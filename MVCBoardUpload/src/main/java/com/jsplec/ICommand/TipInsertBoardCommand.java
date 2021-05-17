package com.jsplec.ICommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.IDao.TipDao;
import com.jsplec.IDto.TipDto;


public class TipInsertBoardCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String tTitle=request.getParameter("tTitle");
		String tContent=request.getParameter("tContent");
		String tImg=request.getParameter("tImg");
		
		TipDao tipDao = new TipDao();
		tipDao.write(tTitle, tContent, tImg);
		

	}

}
