<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purse</title>
</head>
<body>
<h1>Purse Details</h1>
${purse.color}
${purse.brand}
${purse.style}
${purse.size}

<form action= "edit.do" method="POST">

<input type = "hidden" name= "purseId" value="${purse.id}"/>
<input type = "submit" value="Edit"/>
</form>

</body>

<a href="home.do">back home</a>
</html>