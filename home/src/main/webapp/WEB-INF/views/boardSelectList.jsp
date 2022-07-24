<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>게시판 전체조회</h1>
	</div>
	<div>
		<table border="1">
			<thead>
		       <tr>
            	<th>게시글 번호</th>
            	<th>게시글 제목</th>
            	<th>작성자</th>
            	<th>등록날짜</th>
            	<th>수정날짜</th>
            	<th>수정</th>
            	<th>삭제</th>
         		</tr>
         	</thead>
         	<tbody>
				<c:forEach items="${list}" var="bd">
					<tr>
					<td>${bd.bno}</td>
					<td><a onclick="boardSelect(${bd.bno})">${bd.title}</a></td>
					<td>${bd.writer}</td>
					<td>${bd.regdate}</td>
					<td>${bd.updateDate}</td>
					<td><button onclick="boardUpdate(${bd.bno})">수정</button></td>
					<td><button onclick="boardDelete(${bd.bno})">삭제</button></td>
	            	</tr>
         		</c:forEach>
         	</tbody>
		</table>
		<button onclick="boardInsert(${bd.bno})">등록</button>
	</div>
	<script type="text/javascript">
      function boardSelect(bno){
         location.href = "boardSelect?bno="+bno;
      }
      
      function boardInsert(){
          location.href = "boardInsert";
       }
      
      function boardUpdate(bno){
          location.href = "boardUpdate?bno="+bno;
       }
      
      function boardDelete(bno){
          location.href = "delete?bno="+bno;
       }
	</script>
</body>
</html>