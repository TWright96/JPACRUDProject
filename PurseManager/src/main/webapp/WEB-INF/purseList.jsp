<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Purse List</h1>
<form>
<ul>
<c:forEach var="purse" items= "${purseList}">
<img src="${purse.picture}" alt="purse" width="300" height="200">
<li>Color: ${purse.color }</li>
<li>Brand: ${purse.brand }</li>
<li>Size: ${purse.size}</li>
<li>Price: ${purse.price}</li>
</c:forEach>
</ul>
<ul>
<c:forEach var="purse" items= "${purseList}"> 
<li><a href="getPurse.do?pid=:pid">${purse.brand} ${purse.style}</a></li>
</c:forEach>
</ul>
<a href="home.do">back home</a>
</form>
</body>
</html>