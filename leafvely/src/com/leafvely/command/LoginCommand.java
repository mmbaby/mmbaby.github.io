package com.leafvely.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.leafvely.dao.LoginDao;

public class LoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		LoginDao dao = new LoginDao(request);
		String id = request.getParameter("id");
		String input_pw = request.getParameter("pw");
		dao.selectMember(id, input_pw);
	}

}
