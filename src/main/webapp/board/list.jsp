<%@page import="srv.BoardService"%>
<%@page import="ioc.Factory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
	//list.jsp는 로그인한 사용자만 접근 가능하도록 설정
	if(session.getAttribute("userid")==null){
	  response.sendRedirect("./login.jsp");
	}

	BoardService boardSrv = Factory.INSTANCE.getBoardSrv();
	request.setAttribute("list", boardSrv.findAll());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<div id="wrap">
		<h1>글목록</h1>
		
		<p>${name}님 환영합니다~!</p>
		
		
		<table>
			<tbody>
			
			  <c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.seq}</td>
					<td>${dto.title}</td>
					<td>${dto.nickname}</td>
					<td>${dto.regdate}</td>
					<td>${dto.cnt}</td>
				</tr>
			  </c:forEach>
				
				
			</tbody>
		</table>
	</div>
</body>
</html>













