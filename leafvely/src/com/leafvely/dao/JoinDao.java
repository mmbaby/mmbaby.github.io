package com.leafvely.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class JoinDao {
	HttpServletRequest request;
	Connection con;

	public JoinDao(HttpServletRequest req) {
		try {
			request = req;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "kim";
			String pw = "1612";
			con = DriverManager.getConnection(url, user, pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

	private Date formatStringToDate(String[] dataArray) {
		if(dataArray==null)
			return null;
		
		String data_ = "";
		for (int i = 0; i < 3; i++)
			data_ += dataArray[i];
		
		try {
			return new SimpleDateFormat("yyyyMMdd").parse(data_);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	private String getEmail(String[] userEmailArray) {
		return userEmailArray[0]+"@"+userEmailArray[1];
	}
	
	private String getPhoneNumber(String[] phoneNArray) {
		String phoneN = "";
		for(int i=0 ; i<3 ; i++)
			phoneN+=phoneNArray[i];
		
		return phoneN;
	}

	public void updateMember() {
		// id,pw,질문,답변,이름,이메일,생년,우편,주소,상세주소,참고주소,번호,추천인,닉네임
		PreparedStatement ps = null;
		try {
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String pwCheckQ = request.getParameter("pwCheckQ");
			String pwCheckA = request.getParameter("pwCheckA");
			String userName = request.getParameter("userName");
			String postCode = request.getParameter("postCode");
			String address = request.getParameter("address");
			String addressDetail = request.getParameter("addressDetail");
			String addressExtra = request.getParameter("addressExtra");
			String[] phoneNArray = request.getParameterValues("phoneN");
			String phoneN = getPhoneNumber(phoneNArray);
			String[] userEmailArray = request.getParameterValues("userEmail");
			String userEmail = getEmail(userEmailArray);
			String[] birthDateArray = request.getParameterValues("birthDate");
			Date birthDate = formatStringToDate(birthDateArray);
			String referer = request.getParameter("referer");
			String nickName = request.getParameter("nickname");

			ps.setString(1, id);
			ps.setString(2, pw);
			ps.setString(3, pwCheckQ);
			ps.setString(4, pwCheckA);
			ps.setString(5, userName);
			ps.setString(6, userEmail);
			if(birthDate==null)
				ps.setNull(7, java.sql.Types.NULL);
			else
				ps.setDate(7, new java.sql.Date(birthDate.getTime()));
			ps.setString(8, postCode);
			ps.setString(9, address);
			ps.setString(10, addressDetail);
			ps.setString(11, addressExtra);
			ps.setString(12, phoneN);
			if(referer==null)
				ps.setNull(13, java.sql.Types.NULL);
			else
				ps.setString(13, referer);
			if(nickName==null)
				ps.setNull(14, java.sql.Types.NULL);
			else
				ps.setString(14, nickName);
			
				
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
