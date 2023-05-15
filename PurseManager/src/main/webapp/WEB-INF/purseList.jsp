<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purse List</title>
<jsp:include page="header.jsp"/>
</head>
<style> 
 body {
  background-image: url("https://img.freepik.com/premium-vector/abstract-smooth-blur-pink-blue-mesh-color-gradient-background-website-banner-paper_120819-974.jpg");
  background-color: #cccccc;
} 
</style> 
<body>
<h1>Purse List</h1>
<form>
<ul>
<c:forEach var="purse" items= "${purseList}">
<img src="${purse.picture}" alt="purse" width="300" height="200">

<li>Purse ID: ${purse.id }</li>
<li>Color: ${purse.color }</li>
<li>Brand: ${purse.brand }</li>
<li>Style: ${purse.style}</li>
<li>Size: ${purse.size}</li>
<li>Price: ${purse.price}</li>
</c:forEach>
</ul>

<a href="home.do">back home</a>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>