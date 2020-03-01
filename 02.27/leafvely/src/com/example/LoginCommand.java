package com.example;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.example.dao.Dao;
import com.example.dto.MemberDto;

public class LoginCommand implements Command {

	@Override
	public void execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Dao dao = new Dao();
		MemberDto dto = dao.loginProcess(request);
		System.out.println("aasdasdasd");
		if(!request.getParameter("id").equals(dto.getId()) || !request.getParameter("pw").equals(dto.getPw())) {
			System.out.println("fail");
			request.setAttribute("success", "fail");
		}
		else {
			request.setAttribute("success", "ok");
			HttpSession session = request.getSession();
			session.setAttribute("id", request.getParameter("id"));
			session.setAttribute("pw", request.getParameter("pw"));
			System.out.println("check");
		}
	}

}
