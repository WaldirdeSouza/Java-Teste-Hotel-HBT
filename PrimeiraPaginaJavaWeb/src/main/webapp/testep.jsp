<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img src="./imagensPerfil/<%= session.getAttribute("photo") %>" class="img-thumbnail imgp" alt="User Photo" width="100px">
</body>
</html>