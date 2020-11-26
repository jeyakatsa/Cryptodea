<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/css/view.css">	
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" >
			
		<meta charset="UTF-8">
		<meta name="title" content="Cryptodea">
		<meta name="description" content="Create And Delete Any Cryptocurrency Idea.">
		<meta name="google" content="nositelinkssearchbox">
		<meta name="keywords" content="Create Cryptocurrency, Cryptocurrency, Currency, Cryptocyrrency Idea.">
		<meta name="author" content="Cryptodea Team">
		<meta name="viewport" id="viewport" content="width=device-width,user-scalable=yes,initial-scale=1" >
			
		<meta property="og:image" content="https://user-images.githubusercontent.com/51394348/100296991-7871c100-2f42-11eb-92a5-36588b26e54e.png">
		<meta property="og:image:type" content="image/png">
		<meta property="og:image:width" content="1024">
		<meta property="og:image:height" content="1024">
		<meta property="og:title" content="Cryptodea">
		<meta property="og:site_name" content="Cryptodea">	
		<meta property="og:description" content="Create And Delete Any Cryptocurrency Idea.">	
		
		<link rel="icon" type="image/png" href="/icons&images/Icon.ico" sizes="156x156">
	<title><c:out value="${idea.currency}"/></title>
</head>
	<body>
		<div id="wrapper" class="text-dark">
			<div id="left-container">
			    <ul id="left">
					<li id="currency">Currency</li>
					<li id="acronym">Acronym</li>
					<li id="creator">Creator</li>
					<li id="description">Description</li>
				</ul>
				<a id="a1" href="/about">About</a>
			</div>
			<div id="right-container">
				<h4><a id="logo" href="/">CRYPTODEA</a></h4>
				<ul id="right">
					<li>${ idea.currency }</li>
					<li>${ idea.acronym }</li>
					<li>${ idea.creator }</li>
					<li>${ idea.description }</li>
				</ul>
				<a id="a2" href="/delete/${idea.id}">Delete</a>
			</div>
		</div>
	</body>
</html>
