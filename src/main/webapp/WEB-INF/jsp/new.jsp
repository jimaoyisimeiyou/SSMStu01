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

<form  action="http://localhost:8080/addStu" method="post">

    <div><input type="hidden" name="id" value="0"></div>
    <div>
        <label>username:</label>
        <input type="text" name="username" >
    </div>
    <div>
        <label>passwod:</label>
        <input type="password" name="password" >
    </div>
    <div>
        <input type="submit" value="新增">
    </div>

</form>

<script>


</script>

</body>
</html>
