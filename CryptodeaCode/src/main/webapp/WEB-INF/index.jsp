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
		
<!-- Below information for social media sharing and search-engine/browser optimization -->		
		<meta name="title" content="Cryptodea">
		<meta name="description" content="Create and delete any cryptocurrency idea.">
		<meta name="google" content="nositelinkssearchbox">
		<meta name="keywords" content="Create Cryptocurrency, Cryptocurrency, Currency, Cryptocyrrency Idea.">
		<meta name="author" content="Cryptodea Team">
		<meta name="viewport" id="viewport" content="width=device-width,user-scalable=yes,initial-scale=1" >
		
		<link rel="icon" type="image/x-icon" href="/icons&images/Icon.ico" sizes="156x156">
		<link rel="canonical" href="https://cryptodea.com">
		
		<meta property="og:image" content="https://user-images.githubusercontent.com/51394348/100401583-c3f1a100-300e-11eb-8339-aa976cab39db.jpg">	
		<meta property="og:title" content="Cryptodea">
		<meta propety="og:url" content="https://cryptodea.com">
		<meta property="og:site_name" content="Cryptodea">	
		<meta property="og:description" content="Create and delete any cryptocurrency idea.">
		<meta property="og:image:type" content="image/png">
		<meta property="og:image:width" content="700">
		<meta property="og:image:height" content="500">
		
		<meta itemprop="name" content="Cryptodea">
		<meta itemprop="url" content="https://cryptodea.com">
		<meta itemprop="description" content="Create and delete any cryptocurrency idea.">
		<meta itemprop="thumbnailUrl" content="https://user-images.githubusercontent.com/51394348/100401583-c3f1a100-300e-11eb-8339-aa976cab39db.jpg">
		<link rel="image_src" href="https://user-images.githubusercontent.com/51394348/100401583-c3f1a100-300e-11eb-8339-aa976cab39db.jpg">
		<meta itemprop="image" content="https://user-images.githubusercontent.com/51394348/100401583-c3f1a100-300e-11eb-8339-aa976cab39db.jpg">
		
		<meta name="twitter:title" content="Cryptodea">
		<meta name="twitter:image" content="https://user-images.githubusercontent.com/51394348/100401583-c3f1a100-300e-11eb-8339-aa976cab39db.jpg">
		<meta name="twitter:url" content="https://cryptodea.com">
		<meta name="twitter:card" content="summary">
		<meta name="twitter:description" content="Create and delete any cryptocurrency idea.">
		<meta name="description" content="Create and delete any cryptocurrency idea.">
<!-- Above information for social media sharing and search-engine/browser optimization -->	

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