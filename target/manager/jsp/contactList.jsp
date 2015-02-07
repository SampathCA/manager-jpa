<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contacts</title>
</head>
<body>
	<h1>list:</h1>
	<ul>
		<c:forEach var="contact" items="${contacts}">
			<ul>
				<li><a href="contact?id=${contact.id}">${contact.name}</a></li>
			</ul>
		</c:forEach>
	</ul>
	<a href="contact?add">add a new contact</a>
</body>
</html>