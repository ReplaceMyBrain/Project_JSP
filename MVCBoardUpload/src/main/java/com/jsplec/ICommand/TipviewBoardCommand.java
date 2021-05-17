package com.jsplec.ICommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.IDao.TipDao;
import com.jsplec.IDto.TipDto;


public class TipviewBoardCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String tNo = request.getParameter("tNo");
		TipDao tipdao = new TipDao();
		TipDto tipdto = tipdao.view(tNo);
		
		request.setAttribute("view", tipdto);

	}

}
