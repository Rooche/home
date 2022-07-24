<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시물 등록</h1>
<form action="insert">
	<table border="1">
		<tr>
			<td>게시글 제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>게시글 내용</td>
			<td><input type="text" name="content"></td>
		</tr>
		<tr>
			<td>게시글 작성자</td>
			<td><input type="text" name="writer"></td>
		</tr>
	</table>
	<button type="submit">등록</button>
	<button type="button" onclick="boardSelectList()">목록</button>
</form>
<script type="text/javascript">
function boardSelectList(){
    location.href = "boardSelectList";
 }
</script>
</body>
</html>