<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 18.12.2023
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/update/${key.id}" method="post">
    <label for="name">Name</label><br>
    <input type="text" name="name" id="name" value="${key.name}"><br>
    <label for="age">Age</label><br>
    <input type="number" name="age" id="age" value="${key.age}"><br>
    <input type="submit" value="Update">
</form>
</body>
</html>
