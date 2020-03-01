package com.example.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.Command;
import com.example.LogOutCommand;
import com.example.LoginCommand;
import com.example.MemberDeleteCommand;
import com.example.MemberSearchCommand;
import com.example.MemberUpdateCommand;
import com.example.SignUpCommand;

/**
 * Servlet implementation class MemberInsertServlet
 */
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		String viewPage = null;
		Command command = null;
		response.setCharacterEncoding("EUC-KR");
		if (page.equals("/insert.do")) {
			command = new SignUpCommand();
			command.execute(request);
			viewPage = "signUpComplete.jsp";
		} else if (page.equals("/member_search.do")) {
			command = new MemberSearchCommand();
			command.execute(request);
			viewPage = "memberSearchList.jsp";
		} else if (page.equals("/delete.do")) {
			command = new MemberDeleteCommand();
			command.execute(request);
			viewPage = "member_search.do";
			response.sendRedirect(viewPage);
			return;
		} else if (page.equals("/update.do")) {
			if (!checkPassWord(request)) {
				viewPage = "updateFailedView.jsp";
			} else {
				command = new MemberUpdateCommand();
				command.execute(request);
				viewPage = "member_search.do";
				response.sendRedirect(viewPage);
				return;
			}
		} else if (page.equals("/login.do")) {
			HttpSession session = request.getSession();
			session.invalidate();
			session = request.getSession();
			System.out.println(session.isNew());
			if (session.isNew()) {
				System.out.println("new session");
				command = new LoginCommand();
				command.execute(request);
				if (request.getAttribute("success").equals("ok")) {
					viewPage = "shoppingmall.jsp";
					response.sendRedirect(viewPage);
					return;
				} else {
					session.invalidate();
					viewPage = "loginFailedView.jsp";
				}
			} else {
				viewPage = "shoppingmall.jsp";
				response.sendRedirect(viewPage);
				return;
			}
		}else if (page.equals("/logOut.do")) {
			command = new LogOutCommand();
			command.execute(request);
			response.sendRedirect("login.html");
			return;
		}
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

	private boolean checkPassWord(HttpServletRequest request) {
		return request.getParameter("pw").equals(request.getParameter("pwCheck"));
	}

}
