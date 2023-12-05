<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>지금 이 영화로 말할 것 같으면!!!</title>
</head>
<body>

<h1>지금 이 영화로 말할 것 같으면!!!</h1>
<form:form modelAttribute="u" method="POST" action="">
    <form:hidden path="seq"/>
    <table>
        <tr>
            <td>목록 번호:</td>
            <td>${u.seq}</td>
        </tr>
        <tr>
            <td>장르:</td>
            <td>${u.category}</td>
        </tr>
        <tr>
            <td>영화 제목:</td>
            <td>${u.title}</td>
        </tr>
        <tr>
            <td>감독 :</td>
            <td>${u.writer}</td>
        </tr>
        <tr>
            <td>줄거리:</td>
            <td>${u.content}</td>
        </tr>
        <tr>
            <td>작성날짜:</td>
            <td>${u.regdate}</td>
        </tr>
    </table>



    <tr><input type="button" value="Cancel" onclick="history.back()"/></tr>
</form:form>

</body>
</html>