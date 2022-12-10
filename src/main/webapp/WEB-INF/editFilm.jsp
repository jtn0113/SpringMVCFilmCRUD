<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Edit Film Here!</h1>
<form action="updateFilm.do" method="GET" >
		Title:
	 <input type="text" name="title" value="${film.title}"/>
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
    <input type="submit" value="submit" >
    <input >
	
	</form>


</body>
</html>