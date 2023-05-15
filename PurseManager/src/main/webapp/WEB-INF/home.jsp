<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Purse Manager</title>
<link rel= "stylesheet" type= "text/css" href="index.css"/>
<jsp:include page="header.jsp"/>
</head>
 <style> 
 body {
  background-image: url("https://img.freepik.com/premium-vector/abstract-smooth-blur-pink-blue-mesh-color-gradient-background-website-banner-paper_120819-974.jpg");
  background-color: #cccccc;
} 
</style> 
<body>



 <div class="container">
<h1 >Purse Manager</h1>
<form action="getPurse.do" method="GET">
Purse Id: <input type = "text" name = "pid"/>
<input type="submit" value="Show Purse"/>




</form>
<form action = "delete.do" method = "GET">
Delete Purse By Id: <input type= "text" name= "purseId"/>
<input type = "submit" value="Delete"/>
</form>
<form action="getPurses.do" method="GET">
<input type ="submit" value="Show all purses"/>

</form>

<form action= "add.do" method = "GET">
<input type = "submit" value="Add purse"/>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>


 </div> 
 <jsp:include page="footer.jsp"/>    
</body>
</html>