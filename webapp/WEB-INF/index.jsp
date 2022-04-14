<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body class="container bg-dark text-warning w-25 p-3">
	<h1>Send an Omikuji!</h1>
	<form action="/create" method="post" class="d-flex flex-column bd-highlight">
	<label> Pick any number from 5 to 25</label>
	<select name="time">
		<%
		int loopIndex;
		for (loopIndex = 5; loopIndex <=25; loopIndex++){
		%>
		<option value=<%= loopIndex %>><%= loopIndex %></option>
		<% } %>
	</select>
		<label>Enter the name of any city</label>
		<input type="text" name="city">
		<label>Enter the name of any real person</label>
		<input type="text" name="person">
		<label>Enter professional endeavor or hobby</label>
		<input type="text" name="activity">
		<label>Enter any type of living thing</label>
		<input type="text" name="livingThing">
		<label>Say something nice to someone:</label>
		<textarea rows="5" cols="50" name="comment"></textarea>
		<button class="btn btn-outline-warning mt-3">Send</button>
	</form>
	
</body>
</html>
