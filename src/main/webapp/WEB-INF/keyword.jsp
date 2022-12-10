<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Keyword search results</title>
</head>
<body>

<c:forEach var="film" items="${films}" >

	
<a href="search.do?id=${film.id }"  >${film.title}</a>
<br>

</c:forEach>


</body>
</html>