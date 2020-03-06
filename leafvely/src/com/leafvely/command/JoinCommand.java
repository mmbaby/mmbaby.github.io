package com.leafvely.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.leafvely.dao.JoinDao;

public class JoinCommand implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		JoinDao dao = new JoinDao(request);
		Command command = new LoginCommand();
		command.execute(request);
		HttpSession session = request.getSession();
		if(session.getAttribute("id")!=null) {
			session.invalidate();
			
		}
		else
			dao.updateMember();
	}

}
