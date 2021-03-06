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
		
<!-- Below information for social media sharing and search-engine/browser optimization -->		
		<meta name="title" content="Cryptodea">
		<meta name="description" content="Create and delete any cryptocurrency idea.">
		<meta name="google" content="nositelinkssearchbox">
		<meta name="keywords" content="Create Cryptocurrency, Cryptocurrency, Currency, Cryptocyrrency Idea.">
		<meta name="author" content="Cryptodea Team">
		<meta name="viewport" id="viewport" content="width=device-width,user-scalable=yes,initial-scale=1" >
		
		<link rel="icon" type="image/x-icon" href="/icons&images/Icon.ico" sizes="156x156">
		<link rel="canonical" href="https://cryptodea.com">
		
		<meta property="og:image" content="https://user-images.githubusercontent.com/51394348/100407550-8ba58f00-301d-11eb-9982-e7243ab2b60d.jpg">	
		<meta property="og:site_name" content="Cryptodea">	
		<meta property="og:type" content="object">				
		<meta property="og:title" content="Cryptodea">
		<meta propety="og:url" content="https://cryptodea.com">
		<meta property="og:description" content="Create and delete any cryptocurrency idea.">
		<meta property="og:image:type" content="image/jpg">
		<meta property="og:image:width" content="700">
		<meta property="og:image:height" content="400">
		
		<meta name="twitter:title" content="Cryptodea: Create and delete any cryptocurrency idea.">
		<meta name="twitter:image" content="https://user-images.githubusercontent.com/51394348/100407550-8ba58f00-301d-11eb-9982-e7243ab2b60d.jpg">
		<meta name="twitter:url" content="https://cryptodea.com">
		<meta name="twitter:card" content="summary">
		<meta name="twitter:description" content="Create and delete any cryptocurrency idea.">
		<meta name="description" content="Create and delete any cryptocurrency idea.">
<!-- Above information for social media sharing and search-engine/browser optimization -->	
		
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
