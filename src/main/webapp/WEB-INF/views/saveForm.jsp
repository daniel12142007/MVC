<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 18.12.2023
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/save" method="post">
    <label for="name">Name</label><br>
    <input type="text" name="name" id="name"><br>
    <label for="age">Age</label><br>
    <input type="number" name="age" id="age"><br>
    <input type="submit" value="Register">
</form>
</body>
</html>
