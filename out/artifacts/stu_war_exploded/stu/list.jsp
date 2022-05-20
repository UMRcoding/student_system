<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->

    <link
            href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script
            src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/layer/2.3/layer.js"></script>
    <style>
        th, td {
            text-align: center;
        }
    </style>
</head>
<body>
<br/>
<h4 align="center">学生管理</h4>
<br/>
<div style="width: 90%; margin-left: 5%">


    <table class="table table-bordered">
        <tr class="info">
            <th>序号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>班级编号</th>
            <th>入学时间</th>

            <th>编辑</th>
            <th>删除</th>
        </tr>
        <c:forEach varStatus="vs" var="v" items="${list}">
            <tr>
                <td>${vs.index+1 }</td>
                <td>${v.name }</td>
                <td>${v.sex }</td>
                <td>${v.classno }</td>

                <td>${v.worktime}</td>


                <td><a
                        href="${pageContext.request.contextPath}/stutoupdate.do?id=${v.id}">修改</a>
                </td>

                <td><a
                        href="javascript:delto(${v.id});">删除</a>
                </td>


            </tr>

        </c:forEach>


    </table>


</div>
<br/>
<script>
    function delto(id) {
        var url = '${pageContext.request.contextPath}/studel.do?id=' + id;

        layer.confirm('确认要删除吗？', {
            btn: ['确定', '取消']//按钮
        }, function (index) {
            layer.close(index);
            window.location.href = url;

        });


    }

</script>

</body>
</html>