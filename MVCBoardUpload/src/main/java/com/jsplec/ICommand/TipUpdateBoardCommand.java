package com.jsplec.ICommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.IDao.TipDao;



public class TipUpdateBoardCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String tNo = request.getParameter("tNo");
		int tHits = Integer.parseInt(request.getParameter("tHits"));
		String tTitle=request.getParameter("tTitle");
		String tContent=request.getParameter("tContent");
		String tImg=request.getParameter("tImg");

			TipDao tipDao = new TipDao();
			tipDao.update(tNo, tTitle, tContent, tImg, tHits);

	}

}
