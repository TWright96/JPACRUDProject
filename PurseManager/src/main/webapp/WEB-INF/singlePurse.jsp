<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purse</title>
<jsp:include page="header.jsp"/>
</head>
<style> 
 body {
  background-image: url("https://img.freepik.com/premium-vector/abstract-smooth-blur-pink-blue-mesh-color-gradient-background-website-banner-paper_120819-974.jpg");
  background-color: #cccccc;
} 
</style> 
<body>
<h1>Purse Details</h1>
<img src="${purse.picture}" alt="purse" width="300" height="200"><br>


Purse Id: ${purse.id}<br>
Color: ${purse.color}<br>
Brand: ${purse.brand}<br>
Style: ${purse.style}<br>
Size: ${purse.size}<br>
Date Last Cleaned: ${purse.dateCleaned}<br>
Material: ${purse.material}<br>
Purchase Price: ${purse.price}<br>

<form action= "edit.do" method="POST">

<input type = "hidden" name= "purseId" value="${purse.id}"/>
<input type = "submit" value="Edit"/>
</form>
<jsp:include page="footer.jsp"/>
</body>

<a href="home.do">back home</a>
</html>