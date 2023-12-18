<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 18.12.2023
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2px">
    <th>id</th>
    <th>name</th>
    <th>age</th>
    <th>UPDATE</th>
    <th>DELETE</th>
    <c:forEach var="hello" items="${find}">
        <tr>
            <td>${hello.id}</td>
            <td>
                <a href="/find/by/${hello.id}">
                        ${hello.name}
                </a>
            </td>
            <td>${hello.age}</td>
            <td>
                <button>
                    <a href="/update/form/${hello.id}">
                        UPDATE
                    </a>
                </button>
            </td> <td>
                <button>
                    <a href="/delete/${hello.id}">
                        DELETE
                    </a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
<button>
    <a href="/form">
        Register
    </a>
</button>
</body>
</html>
