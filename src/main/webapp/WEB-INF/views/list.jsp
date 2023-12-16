<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Free Board</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
    <style>
        .card-number {
            justify-content: left;
        }

        .title-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
        }

        .button-group {
            margin-top: 10px;
            display: flex;
            justify-content: flex-end;
            width: 100%;
        }

        #logout, #add {
            margin-right: 10px; /* Adjust the margin as needed */
        }

        .card-container {
            display: flex;
            flex-wrap: wrap; /* Allow cards to wrap to the next line */
            justify-content: center;
            margin: 50px;
        }

        .card {
            margin-right: 20px;
            margin-bottom: 20px;
            width: 22rem;
        }

        .button-group {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="title-container">
    <h1>당신의 영화를 고르시오</h1>
</div>

<div class="card-container">
    <c:forEach items="${list}" var="u">
        <div class="card text-center" style="width:22rem;">
            <div class="card-body">
                <div class="card-number text-left">
                    <h5>${u.seq}번째 내 영화<br/></h5>
                </div>
                <p>장르 : ${u.category}</p>
                <p one onclick="location.href='view/${u.seq}'">${u.title}</p>
                <p>감독 : ${u.writer}</p>
                <p>줄거리 : ${u.content}</p>
                <p>
                    <c:set var="dateFormat" value="yyyy-MM-dd" />
                    <fmt:formatDate value="${u.year}" pattern="${dateFormat}" />
                </p>
                <div class="d-flex justify-content-end">
                    <div class="button-group">
                        <a href="editpost/${u.seq}" class="btn btn-primary">Edit</a>
                        <a href="javascript:delete_ok('${u.seq}')" class="btn btn-danger">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<div class="button-group">
    <div id="logout"><a href="login/logout" class="btn btn-secondary">Logout</a></div>
    <button type="button" onclick="location.href='add'" class="btn btn-primary" id="add">새글쓰기</button>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
