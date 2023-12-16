<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Post</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            background-color: #333;
            color: #fff;
            padding: 10px;
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

        table, td {
            border: 1px solid #ddd;
        }

        td {
            padding: 15px;
        }

        td:first-child {
            width: 150px; /* Adjust the width as needed */
        }

        input, textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table>
        <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>장르:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>감독:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>출연자:</td><td><input type="text" name="actor"/></td></tr>
        <tr><td>별점:</td><td><input type="number" step="0.1" name="star"/></td></tr>
        <tr><td>년도:</td><td><input type="date" name="year" min="1895-12-25" max="2098-12-31"/></td></tr>
        <tr><td>줄거리:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>
