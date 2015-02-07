<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit contact</title>
</head>
<body>
	<h1>Edit contact:</h1>
	<form action="contact" method="post">
		<input type="hidden" name="edit"> <input type="hidden"
			name="id" value="${contact.id}">
		<ul>
			<li>name: <input type="text" name="name" value="${contact.name}"></li>
			<li>street: <input type="text" name="street"
				value="${contact.address.street}"></li>
			<li>city: <input type="text" name="city"
				value="${contact.address.city}"></li>
			<li>state: <input type="text" name="state"
				value="${contact.address.state}"></li>
			<li>zip: <input type="text" name="zip"
				value="${contact.address.zip}"></li>
		</ul>
		<input type="submit" value="save">
	</form>
	<form action="contact" method="post">
		<input type="hidden" name="delete"> <input type="hidden"
			name="id" value="${contact.id}"> <input type="submit"
			value="delete">
	</form>
	<a href="contacts">back to contact list</a>
</body>
</html>