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
    <link rel="stylesheet" href="/css/bootstrap.css">
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


        <c:forEach items="${pageAllStus.list}" var="stu">
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

    <div class="pagination-layout">

        <div class="pagination">
            <ul class="pagination">

            </ul>


        </div>
    </div>

</div>

<script src="/js/jquery-3.0.0.js"></script>
<script src="/js/jqPaginator.js"></script>
<script>
    window.onload = function() {
        var if_fistime = true;
        $(".pagination")
            .jqPaginator(
                {
                    totalPages : ${pageAllStus.pages},
                    visiblePages : 3,
                    currentPage : ${pageAllStus.pageNum},
                    first : '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
                    prev : '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
                    next : '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
                    last : '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
                    page : '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',

                    onPageChange : function(num) {

                        /* alert(num); */
                        if (if_fistime) {
                            if_fistime = false;
                        } else {
                            changePage(num);
                        }

                    }

                })

    }

    function changePage(num) {

        window.location.href = "getPageAllStus?pageNum=" + num;
    }




    function del(obj){

        location.href="http://localhost:8080/delStu?id="+obj;

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
