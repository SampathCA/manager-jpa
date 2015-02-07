<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add contact</title>
</head>
<body>
	<h1>add contact:</h1>
	<form action="contact?add" method="post">
		<input type="hidden" name="add">
		<ul>
			<li>name: <input type="text" name="name"></li>
			<li>street: <input type="text" name="street"></li>
			<li>city: <input type="text" name="city"></li>
			<li>state: <input type="text" name="state"></li>
			<li>zip: <input type="text" name="zip"></li>
		</ul>
		<input type="submit" value="add">
	</form>
	<a href="contacts">back to contact list</a>
</body>
</html>