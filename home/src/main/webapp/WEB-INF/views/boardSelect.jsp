<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시물 상세보기</h1>
	<table border="1">
		<tr>
			<td>게시글 번호</td>
			<td>${vo.bno }</td>
		</tr>
		<tr>
			<td>게시글 제목</td>
			<td>${vo.title }</td>
		</tr>
		<tr>
			<td>게시글 내용</td>
			<td>${vo.content }</td>
		</tr>
		<tr>
			<td>게시글 작성자</td>
			<td>${vo.writer }</td>
		</tr>
		<tr>
			<td>게시글 등록날짜</td>
			<td>${vo.regdate }</td>
		</tr>
		<tr>
			<td>게시글 수정날짜</td>
			<td>${vo.updateDate }</td>
		</tr>
	</table>
</body>
</html>