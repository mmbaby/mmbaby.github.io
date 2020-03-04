package com.leafvely.command;

import javax.servlet.http.HttpServletRequest;

import com.leafvely.dao.LoginDao;

public class LoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		LoginDao dao = new LoginDao(request);
		
	}

}
