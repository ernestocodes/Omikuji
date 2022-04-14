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
</head>
<body class="container bg-secondary text-warning w-25 p-3">
	<h1>Here's Your Omikuji!</h1>
	<div class="rounded bg-dark text-warning border border-warning px-4 pb-2 pt-4" >
	<p class="lead">In ${time} years you will live in ${city} with ${person} as your roommate, ${activity} for a living. The next time you see a ${livingThing}, you will have good luck. Also ${comment}</p>
	</div>
	<a class="btn btn-outline-warning mt-3" href="/omikuji">Go back</a>
</body>
</html>