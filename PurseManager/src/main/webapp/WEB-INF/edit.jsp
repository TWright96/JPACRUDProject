<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit purse</title>
<jsp:include page="header.jsp"/>
</head>
<style> 
<
 body {
  background-image: url("https://img.freepik.com/premium-vector/abstract-smooth-blur-pink-blue-mesh-color-gradient-background-website-banner-paper_120819-974.jpg");
  
} 
 
</style>
<body>
<h1>Edit Purse:</h1>
<form action= "edited.do" method="POST">
 <label for="color">Color:</label><br>
  <input type="text" class="form-control" placeholder="${purse.color}" id="color" name="color"><br>
  <label for="brand">Brand:</label><br>
   <input type="text" class="form-control" placeholder="${purse.brand}" id="brand" name="brand"><br>
   <label for="style">Style:</label><br>
 <input type="text" class="form-control" placeholder="${purse.style}" id="style" name="style"><br>
  <label for= "size">Size:</label>
  <select name="size" id="size" >
  <option value="small">Small</option>
  <option value="medium">Medium</option>
  <option value="large">Large</option>
  </select><br>
   <label for="material">Material:</label><br>
   <input type="text" class="form-control" placeholder="${purse.material}" id="material" name="material"><br>
   <label for="picture">Picture:</label><br>
  <input type="text"class="form-control" placeholder="${purse.picture}" id="picture" name="picture"><br>
 <input type = "hidden" name= "purseId" value="${purse.id}"/>
<input type = "submit" value="Edit"/>
<h1>To add a picture:</h1>
<p>
Search for a picture of the purse on google images. Right click the image and select copy picture address. Paste the image address into the picture section of the above form.
</p>
</form>
<a href="home.do">back home</a>
<jsp:include page="footer.jsp"/>    
</body>

</html>