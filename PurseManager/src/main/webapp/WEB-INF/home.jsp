<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purse Manager</title>
</head>
<body>
<h1>Purse Manager</h1>
<form action="getPurse.do" method="GET">
Purse Id: <input type = "text" name = "pid"/>
<input type="submit" value="Show Purse"/>


</form>
<form action="getPurses.do" method="GET">
<input type ="submit" value="Show all purses"/>

</form>

<form action= "add.do" method = "GET">
<input type = "submit" value="Add purse"/>

</form>



</body>
</html>