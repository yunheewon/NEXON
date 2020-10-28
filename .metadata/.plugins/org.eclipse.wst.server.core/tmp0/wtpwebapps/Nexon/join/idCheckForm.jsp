<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<link rel="stylesheet" href="${contextPath}/css/CheckForm.css">
</head>
<body>
	<div style="text-align:center">
		<h3>아이디 중복확인</h3>
		<form action="idCheckProc.jsp" method="post" onsubmit="return blankCheck(this)">
			아이디 : <input type="text" id="userId" name="userId" maxlength="16" autofocus>
			<input type="submit" value="중복확인" id="chk_btn">
		</form>
	</div>
	
	<script>
		function blankCheck(f){
			var userId = f.userId.value;
			userId = userId.trim();
			if(userId.length<5){
				alert("아이디는 5자 이상 입력해주세요");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>