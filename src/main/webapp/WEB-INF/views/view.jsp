<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>지금 이 영화로 말할 것 같으면!!!</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        h1 {
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            text-align: left;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
        }

        th {
            background-color: #f2f2f2;
        }

        input[type="button"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<header>
    <h1>지금 이 영화로 말할 것 같으면!!!</h1>
</header>

<form:form modelAttribute="u" method="POST" action="">
    <form:hidden path="seq"/>
    <table>
        <tr>
            <th>목록 번호:</th>
            <td>${u.seq}</td>
        </tr>
        <tr>
            <th>장르:</th>
            <td>${u.category}</td>
        </tr>
        <tr>
            <th>영화 제목:</th>
            <td>${u.title}</td>
        </tr>
        <tr>
            <th>감독:</th>
            <td>${u.writer}</td>
        </tr>
        <tr>
            <th>출연자:</th>
            <td>${u.actor}</td>
        </tr>
        <tr>
            <th>별점:</th>
            <td>${u.star}</td>
        </tr>
        <tr>
            <th>년도:</th>
            <td>${u.year}</td>
        </tr>
        <tr>
            <th>작성날짜:</th>
            <td>${u.regdate}</td>
        </tr>
    </table>

    <input type="button" value="Cancel" onclick="history.back()"/>
</form:form>

</body>
</html>
