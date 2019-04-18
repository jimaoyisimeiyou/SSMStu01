<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/15
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form  action="http://localhost:8080/updateStu" method="post">

    <div>
        <label>id:</label>
        <label>${stu.id}</label>
        <input type="hidden" name="id" value="${stu.id}">
    </div>
    <div>
        <label>username:</label>
        <input type="text" name="username" value="${stu.username}">
    </div>
    <div>
        <label>passwod:</label>
        <input type="password" name="password" value="${stu.password}">
    </div>
    <div>
        <input type="submit" value="修改">
    </div>

</form>

<script>


</script>

</body>
</html>
