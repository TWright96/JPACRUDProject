<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit purse</title>
</head>

<body>
<h1>Edit Purse:</h1>
<form action= "edited.do" method="POST">
 <label for="color">Color:</label><br>
  <input type="text" id="color" name="color"><br>
  <label for="brand">Brand:</label><br>
  <input type="text" id="brand" name="brand"><br>
   <label for="style">Style:</label><br>
  <input type="text" id="color" name="color"><br>
  <label for= "size">Size:</label>
  <select name="Style" id="style">
  <option value="small">Small</option>
  <option value="medium">Medium</option>
  <option value="large">Large</option>
  </select><br>
   <label for="material">Material:</label><br>
  <input type="text" id="material" name="material"><br>
 <input type = "hidden" name= "purseId" value="${purse.id}"/>
<input type = "submit" value="Edit"/>
</form>
<a href="home.do">back home</a>
</body>

</html>