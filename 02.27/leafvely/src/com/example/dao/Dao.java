package com.example.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import com.example.dto.MemberDto;

public class Dao {
	Connection con;
	PreparedStatement pre;
	DataSource datasource;
	ResultSet rs;

	public Dao() {
		// TODO Auto-generated constructor stub
//		String user = "kim";
//		String password = "1612";
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			con = DriverManager.getConnection(url, user, password);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		try {
			Context context = new InitialContext();
			datasource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public void insertData(HttpServletRequest request) {
		try {
			con = datasource.getConnection();
			String query = "insert into Member(id,pw) values (?,?)";
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			pre = con.prepareStatement(query);
			pre.setString(1, id);
			pre.setString(2, pw);
			pre.executeUpdate();
			request.setAttribute("id", id);
			request.setAttribute("pw", pw);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (pre != null)
					pre.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
	}

	public void getData(HttpServletRequest request) {
		try {
			con = datasource.getConnection();
			String query = "select * from Member";
			pre = con.prepareStatement(query);
			rs = pre.executeQuery();
			ArrayList<MemberDto> dtos = new ArrayList<MemberDto>();
			while (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				dtos.add(new MemberDto(id, pw));
			}
			request.setAttribute("memberList", dtos);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pre != null)
					pre.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
	}

	public void deleteData(HttpServletRequest request) {
		try {
			con = datasource.getConnection();
			String query = "delete from Member where id=?";
			pre = con.prepareStatement(query);
			pre.setString(1, request.getParameter("id"));
			pre.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (pre != null)
					pre.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
	}

	public void updateData(HttpServletRequest request) {
		try {
			con = datasource.getConnection();
			String query = "update member set pw=? where id=?";
			pre = con.prepareStatement(query);
			pre.setString(1, request.getParameter("pw"));
			pre.setString(2, request.getParameter("id"));
			pre.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (pre != null)
					pre.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
	}

	public MemberDto loginProcess(HttpServletRequest request) {
		try {
			con = datasource.getConnection();
			String query = "select id,pw from member where id=?";
			pre = con.prepareStatement(query);
			pre.setString(1, request.getParameter("id"));
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				return new MemberDto(id, pw);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if (pre != null)
					pre.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
		return null;
	}
	
}
