<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add purse</title>
</head>
<body>
<h1>Add purse</h1>
<form action="added.do" method= "GET">

  <label for="color">Color:</label><br>
  <input type="text" id="color" name="color"><br>
  <label for="brand">Brand:</label><br>
  <input type="text" id="brand" name="brand"><br>
   <label for="style">Style:</label><br>
  <input type="text" id="color" name="color"><br>
  <label for= "size">Size:</label>
  <select name="Style" id="style">
  <option value="small">Small</option>
  <option value="small">Medium</option>
  <option value="small">Large</option>
  </select><br>
   <label for="material">Material:</label><br>
  <input type="text" id="material" name="material"><br>
  
  <input type="submit" value="Add purse">
  </form>

</body>
</html>