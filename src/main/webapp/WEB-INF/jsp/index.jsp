<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/18
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>


    #box{

        margin-top: 50px;
        margin-left: 500px;
    }

</style>
<body>


<div id="box" >

    <table>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>pwd</th>
            <th>操作</th>
        </tr>


        <c:forEach items="${stus}" var="stu">
            <tr>
                <td>${stu.id}</td>
                <td>${stu.username}</td>
                <td>${stu.password}</td>
                <td><button onclick="del(${stu.id})">删除</button></td>
                <td><button onclick="update(${stu.id})">修改</button></td>

            </tr>


        </c:forEach>

    </table>


    <div style="margin-top: 10px;margin-left: 300px">

        <button onclick="add()">新增</button>

    </div>
</div>
<script>
    function del(obj){

        location.href="http://localhost:8080/deleteStu?id="+obj;

    }
    function update(obj) {

        location.href="http://localhost:8080/toUpdateStu?id="+obj;
    }

    function add() {

        location.href="http://localhost:8080/toAddStu";
    }
</script>
</body>
</html>
