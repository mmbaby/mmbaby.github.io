<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="update.do" method="post">
		ID : <input type="text" value=${param.id} readonly="readonly" name="id"> <br>
		������ PW : <input type="password" name="pw"><br>
		������ PW Ȯ�� : <input type="password" name="pwCheck"><br>
		<input type="submit" value="����">
	</form>
</body>
</html>