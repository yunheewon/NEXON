<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 중복확인</title>
<link rel="stylesheet" href="${contextPath}/css/CheckForm.css">
</head>
<body>
	<div style="text-align:center">
		<h3>이메일 중복확인</h3>
		<form action="emailCheckProc.jsp" method="post" onsubmit="return blankCheck(this)">
			이메일 : <input type="email" id="email" name="email" autofocus style="height: 24px; width: 170px;">
			<input type="submit" value="중복확인" id="chk_btn">
		</form>
	</div>
	
	<script>
		function blankCheck(f){
			var userId = f.userId.value;
			userId = userId.trim();
			if(userId.length<15){
				alert("이메일을 형식에 맞춰 입력해주세요.\n예)example@nexon.com");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>