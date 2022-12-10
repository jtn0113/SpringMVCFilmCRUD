<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC Film SIte</title>
</head>
<body>

<div class="container">
		
	<h1>SD Movie Data Base (SMDB)!</h1>

	<h2>Film Results</h2>

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
	
	
	<p>
		<p>
			<a href="WEB-INF/editFilm.jsp" class="btn btn-secondary" role="button">Edit film</a>
		</p>
	
			<a href="index.html" class="btn btn-primary" role="button">Back to Search</a>
		</p>
	
	


</div>

</body>
</html>