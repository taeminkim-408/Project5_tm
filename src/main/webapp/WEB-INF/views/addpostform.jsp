<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id ="edit">
        <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>줄거리:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href.list">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>