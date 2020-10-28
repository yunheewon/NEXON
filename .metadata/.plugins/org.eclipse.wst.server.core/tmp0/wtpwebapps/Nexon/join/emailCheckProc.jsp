<%@page import="com.nexon.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 중복확인 결과</title>
<link rel="stylesheet" href="${contextPath}/css/CheckProc.css">
</head>
<body>
	<div style="text-align: center"></div>
	<h3>이메일 중복확인 결과 </h3>
<%
	//1) 사용 가능한 아이디일 경우, 아이디 입력 폼에 넣기 위함
	String email = request.getParameter("email");
	UserDAO uControl = UserDAO.getInstance();
	int cnt = uControl.duplecateEmail(email);
	out.println("입력 Email : <strong>" + email + "</strong>");
	if(cnt==0){
		out.println("<p>사용 가능한 이메일입니다.</p>");
		out.println("<a id='use' href='javascript:apply(\"" + email + "\")'>적용</a>");
%>	
		<script>
			function apply(email){
				//중복확인 id를 부모창에 적용
				opener.document.frmSubmit.email.value = email;
				window.close();
			}
		</script>
<%
	}else{
		out.println("<p style='color:red'>현재 사용중인 이메일 입니다.</p>");
	}
%>
<hr>
<a id="retry" href="javascript:history.back()">다시시도</a>
&nbsp; &nbsp;
<a id="close" href="javascript:window.close()">창닫기</a>
</body>
</html>