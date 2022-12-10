<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Edited Film Results!</h1>
	
	
	
<ul>
		<li> Id: ${film.id }</li>
		<li>Title: ${film.title}</li>
		<li>Description: ${film.description}</li>
		<li>Release Year: ${film.releaseYear}</li>
		<li>Language Id: ${film.languageId}</li>
		<li>Rental Duration: ${film.rentalDuration}</li>
		<li>Rental Rate: ${film.rentalRate}</li>
		<li>Length: ${film.length}</li>
		<li>Replacement Cost: ${film.replacementCost}</li>
		<li>Film Rating: ${film.rating}</li>
		
		
		
	</ul>


	<p><a href="index.html" class="btn btn-primary" role="button">Return to Main Menu </a></p>
</body>
</html>