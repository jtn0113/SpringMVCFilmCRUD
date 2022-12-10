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
	
	<h3>Make edits to fields below or return to 
	
	<a href="index.html" class="btn btn-primary" role="button">main menu </a></h3>



<form action="updateFilm.do" method="GET" >

		Id:
	 <input type="text" id="id" name="id" value="${film.id}"/>
	 <br>
		Title:
	 <input type="text" id="title" name="title" value="${film.title}"/>
	 <br>
	 	Description:
	 <input type="text" name="description"value="${film.description}" />
	 <br>
	 	Release Year:
	 <input type="text" name="releaseYear" value="${film.releaseYear}"/>
	 <br>
	 	Rental Duration:
	 <input type="text" name="rentalDuration" value="${film.rentalDuration}"/>
	 <br>
	   Length: 
    <input type="text"  name="length" value="${film.length}" />
    <br>
	   Replacement Cost: 
    <input type="text" name="replacementCost" value="${film.replacementCost}" />
    <br>
	   Rating: 
    <input type="text" name="rating" value="${film.rating}" />
    <br>
    <div>
    <input type="submit" value="Submit" >
	</div>
	</form>
	
	
	


</div>

</body>
</html>