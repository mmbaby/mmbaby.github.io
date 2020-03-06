package com.leafvely.dto;

import java.util.Date;

public class MemberDto {
	// id,pw,질문,답변,이름,이메일,생년,우편,주소,상세주소,참고주소,번호,추천인
	String id;
	String pw;
	String pwCheckQ;
	String pwCheckA;
	String userName;
	String userEmail;
	Date birthDate;
	String postCode;
	String address;
	String addressDetail;
	String addressExtra;
	String phoneN;
	String referer;
	String nickName;
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public MemberDto(String id, String pw, String pwCheckQ, String pwCheckA, String userName, String userEmail,
			Date birthDate, String postCode, String address, String addressDetail, String addressExtra, String phoneN,
			String referer, String nickName) {
		this.id = id;
		this.pw = pw;
		this.pwCheckQ = pwCheckQ;
		this.pwCheckA = pwCheckA;
		this.userName = userName;
		this.userEmail = userEmail;
		this.birthDate = birthDate;
		this.postCode = postCode;
		this.address = address;
		this.addressDetail = addressDetail;
		this.addressExtra = addressExtra;
		this.phoneN = phoneN;
		this.referer = referer;
		this.nickName = nickName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPwCheckQ() {
		return pwCheckQ;
	}

	public void setPwCheckQ(String pwCheckQ) {
		this.pwCheckQ = pwCheckQ;
	}

	public String getPwCheckA() {
		return pwCheckA;
	}

	public void setPwCheckA(String pwCheckA) {
		this.pwCheckA = pwCheckA;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getAddressExtra() {
		return addressExtra;
	}

	public void setAddressExtra(String addressExtra) {
		this.addressExtra = addressExtra;
	}

	public String getPhoneN() {
		return phoneN;
	}

	public void setPhoneN(String phoneN) {
		this.phoneN = phoneN;
	}

	public String getReferer() {
		return referer;
	}

	public void setReferer(String referer) {
		this.referer = referer;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
	
}
