<%@page import="com.nexon.dto.NexonUser"%>
<%@page import="com.nexon.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 결과</title>
<link rel="stylesheet" href="${contextPath}/css/findProc.css">
</head>
<body>
<div style="text-align: center"></div>
	<h3>아이디 찾기 결과 </h3>
<%
	String email = request.getParameter("email");
	
	UserDAO uControl = UserDAO.getInstance();
	NexonUser nResult = uControl.idFind(email);
	
	if(nResult != null){
		if(nResult.getEmail().equals(email)){
			out.println("입력 ID : <strong>" + nResult.getUserId() + "</strong>");
		}
		else{
			out.println("<p style='color:red'>존재하지 않는 정보입니다.</p>");
		}
	}else{
		out.println("<p style='color:red'>존재하지 않는 정보입니다.</p>");
	}
%>
<hr>
<a id="close" href="javascript:window.close()">창닫기</a>
</body>
</html>