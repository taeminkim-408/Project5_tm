<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
	<style>
		body {
			font-family: 'Arial', sans-serif;
			background-color: #f4f4f4;
			margin: 0;
			padding: 0;
			text-align: center;
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

		input[type="submit"], input[type="button"] {
			background-color: #333;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		input[type="submit"]:hover, input[type="button"]:hover {
			background-color: #555;
		}
	</style>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table>
		<tr>
			<td>제목:</td>
			<td><form:input path="title" /></td>
		</tr>
		<tr>
			<td>감독:</td>
			<td><form:input path="writer" /></td>
		</tr>
		<tr>
			<td>출연자:</td>
			<td><form:input path="actor" /></td>
		</tr>
		<tr>
			<td>별점:</td>
			<td><form:input path="star" /></td>
		</tr>
		<tr>
			<td>연도:</td>
			<td><form:input path="year" type="date" min="1895-12-25" max="2098-12-31" /></td>
		</tr>
		<tr>
			<td>줄거리:</td>
			<td><form:textarea cols="50" rows="5" path="content" /></td>
		</tr>
		<tr>
			<td>카테고리:</td>
			<td><form:input path="category" /></td>
		</tr>
	</table>

	<input type="submit" value="Edit Post"/>
	<input type="button" value="Cancel" onclick="history.back()"/>
</form:form>

</body>
</html>
