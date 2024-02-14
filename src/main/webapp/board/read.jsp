<%@page import="srv.BoardService"%>
<%@page import="ioc.Factory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
	int seq = 0;

	String seq_ = request.getParameter("seq");
	if(!seq_.isEmpty()){
	  seq = Integer.valueOf(seq_);
	}
	
	BoardService boardSrv = Factory.INSTANCE.getBoardSrv();
	request.setAttribute("dto", boardSrv.getOne(seq));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<div id="wrap">
		<h1>상세 게시글</h1>
		<form action="./writeCtrl.jsp" method="post">
			
			<fieldset>
				<legend>글내용</legend>
				
				<table>
	                <tbody>
	                     <tr>
	                         <th scope="row"><label for="title">제목</label></th>
	                         <td>
	                             <input type="text" id="title" name="title" value="${dto.title}" />
	                         </td>
	                     </tr>
	                     <tr>
	                         <th scope="row"><label for="nickname"></label>닉네임</th>
	                         <td><input type="text" id="nickname" name="nickname" value="${dto.nickname}" /></td>
	                     </tr>
	                     <tr>
	                         <th scope="row"><label for="content">내용</label></th>
	                         <td>
	                             <textarea name="content" cols="40" rows="10">${dto.content}</textarea>
	                         </td>
	                     </tr>	                     
	                </tbody>  
				</table>
			</fieldset>
			<p><button>글등록</button></p>
		</form>
	</div>
</body>
</html>