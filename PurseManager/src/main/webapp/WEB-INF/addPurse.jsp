<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add purse</title>
<link rel= "stylesheet" type= "text/css" href="index.css"/>
</head>
<style> 
 body {
  background-image: url("https://img.freepik.com/premium-vector/abstract-smooth-blur-pink-blue-mesh-color-gradient-background-website-banner-paper_120819-974.jpg");
  background-color: #cccccc;
} 
</style> 
<body>
<h1>Add purse</h1>
<form action="added.do" method= "GET">
<div class="row">
<div class="col">
  <label for="color">Color:</label><br>
  <input type="text" class="form-control" placeholder="${purse.color}" id="color" name="color"><br>
  </div>
  <div class="col">
  <label for="brand">Brand:</label><br>
  <input type="text" id="brand" name="brand"><br>
</div>
</div>
   <label for="style">Style:</label><br>
  <input type="text" id="style" name="style"><br>
  <label for= "size">Size:</label>
  <select name="size" id="size">
  <option value="small">Small</option>
  <option value="medium">Medium</option>
  <option value="large">Large</option>
  </select><br>
   <label for="picture">Picture:</label><br>
  <input type="text" id="picture" name="picture"><br>
   <label for="date">Date Last Cleaned:</label><br>
  <input type="date" id="date" name="date"><br>
   <label for="material">Material:</label><br>
  <input type="text" id="material" name="material"><br>
   <label for="material">Purchase price:</label><br>
  <input type="text" id="price" name="price"><br> 
  <input type="submit" value="Add purse">
  </form>
<a href="home.do">back home</a>
<jsp:include page="footer.jsp"/>
</body>
</html>