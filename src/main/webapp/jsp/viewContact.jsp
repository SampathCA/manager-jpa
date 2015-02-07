<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${contact.name}</title>
</head>
<body>
	<h1>${contact.name}</h1>

	<ul>
		<li>${contact.address.street}</li>
		<li>${contact.address.city},${contact.address.state},${contact.address.zip}</li>
	</ul>
	<a href="contact?edit&id=${contact.id}">edit contact</a> |
	<a href="contacts">back to contact list</a>
</body>
</html>