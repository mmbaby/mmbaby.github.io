package com.leafvely.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.leafvely.dao.LoginDao;
import com.leafvely.dto.MemberDto;

public class LoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		LoginDao dao = new LoginDao(request);
		String id = request.getParameter("id");
		String input_pw = request.getParameter("pw");
		MemberDto mDto = dao.selectMember(id, input_pw);
		if(mDto.getPw().equals(input_pw)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
		}
	}

}
