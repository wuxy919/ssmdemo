<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户测试</title>
</head>
<body>
    <c:forEach items="${list}" var="user">
        ${user.id}---${user.name}---${user.password}---${user.age}<br/>
    </c:forEach>
</body>
</html>
