<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/index.css">	
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" >
			
		<meta charset="UTF-8">
		<meta name="title" content="Cryptodea">
		<meta name="description" content="Create And Delete Any Cryptocurrency Idea.">
		<meta name="google" content="nositelinkssearchbox">
		<meta name="keywords" content="Create Cryptocurrency, Cryptocurrency, Currency, Cryptocyrrency Idea.">
		<meta name="author" content="Cryptodea Team">
		<meta name="viewport" id="viewport" content="width=device-width,user-scalable=yes,initial-scale=1" >
			
		<meta property="og:image" content="https://user-images.githubusercontent.com/51394348/100303454-5df31400-2f51-11eb-936b-20ac637d0197.jpg">
		<meta property="og:image:type" content="image/png">
		<meta property="og:image:width" content="1024">
		<meta property="og:image:height" content="1024">
		<meta property="og:title" content="Cryptodea">
		<meta property="og:site_name" content="Cryptodea">	
		<meta property="og:description" content="Create And Delete Any Cryptocurrency Idea.">	
		
		<link rel="icon" type="image/png" href="/icons&images/Icon.ico" sizes="156x156">
	<title>Cryptodea</title>
</head>
	<body>
		<div id="wrapper" class="text-dark">
			<h2 id="logo">CRYPTODEA</h2>
			<h4 id="heading">CREATE AND DELETE ANY CRYPTOCURRENCY IDEA</h4>
            <form action="/create">
				<input id="create" type="submit" value="Create"/>
            </form>
            <hr id="horizontal-line">
			<table id="table">
            <!--<thead>
					<th>CURRENCY</th>
			        <th>ACRONYM</th>
			        <th>CREATOR</th>
				</thead> -->
				<tbody>
				<c:forEach items="${idea}" var="idea">
					<tr id="tr">
						<td>
							<a id="acronymname" href="/${idea.id}">
							${idea.acronym}</a>
						</td>
						<td>
							<a id="currencyname" href="/${idea.id}">
							${idea.currency}</a>
						</td>
						<td><a id="delete" href="/delete/${idea.id}">Delete</a></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<p><a id="a1" href="/about">About</a></p>
		</div>
	</body>
</html>