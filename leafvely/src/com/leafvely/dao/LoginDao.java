package com.leafvely.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.leafvely.dto.MemberDto;

public class LoginDao {
	HttpServletRequest request;
	Connection con;
	public LoginDao(HttpServletRequest req) {
		try {
			request = req;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "kim";
			String pw = "1612";
			con = DriverManager.getConnection(url,user,pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public MemberDto selectMember(String id, String input_pw) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			String sql = "select id,pw from member where id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,id);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberDto mDto = new MemberDto();
				mDto.setId(rs.getString("id"));
				mDto.setPw(rs.getString("pw"));
				return mDto;
			}
			else
				return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
}
