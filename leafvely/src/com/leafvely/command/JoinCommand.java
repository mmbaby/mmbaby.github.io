package com.leafvely.command;

import javax.servlet.http.HttpServletRequest;

import com.leafvely.dao.JoinDao;

public class JoinCommand implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		JoinDao dao = new JoinDao();
		dao.updateMember(request);
	}

}
