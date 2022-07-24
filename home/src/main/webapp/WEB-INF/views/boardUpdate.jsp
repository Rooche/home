<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시물 수정</h1>
<form action="update">
	<input type="hidden" name="bno" value="${vo.bno }">
	<table border="1">
		<tr>
			<td>게시글 제목</td>
			<td><input type="text" name="title" value="${vo.title }"></td>
		</tr>
		<tr>
			<td>게시글 내용</td>
			<td><input type="text" name="content" value="${vo.content }"></td>
		</tr>
	</table>
	<button type="submit">수정</button>
	<button type="button" onclick="boardSelectList()">목록</button>
</form>
<script type="text/javascript">
function boardSelectList(){
    location.href = "boardSelectList";
 }
</script>
</body>
</html>