<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC Film SIte</title>
</head>
<body>
<h1>SD Movie Data Base (SMDB)!</h1>

<form:form action="search.do" method="GET" modelAttribute="film">
	<form:label path="id"> Film Id: </form:label>
	<form:input path="id"/>
	<br/>
	<input type="submit" value="Search Film"/>
	
	
</form:form>
	
<form:form action="search.do" method="GET" modelAttribute="film">
	
	<form:label path="keyword"> Keyword: </form:label>
	<form:input path="keyword" />
	<br/>
	
	<input type="submit" value="Search Film"/>
	
</form:form>

</body>
</html>