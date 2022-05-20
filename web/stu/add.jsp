<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link
            href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script
            src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/layer/2.3/layer.js"></script>
</head>
<body>

<div
        style="margin-top: 5px; width: 60%; margin-left: 15%; marign-right: 20%;">
    <h3 align="center" style="color:green">添加学生</h3>
    <div id="darkbannerwrap"></div>

    <form method="post"
          action="${pageContext.request.contextPath }/stuadd.do">


        请输入姓名 <input
            name="name" required="required" type="text"
            class="form-control" required="required">
        <br/>


        请选择性别 <select name="sex" class="form-control">

        <option value="男">男</option>
        <option value="女">女</option>
    </select>
        <br/>


        请输入班级编号 <input
            name="classno" required="required" type="text"
            class="form-control" required="required">
        <br/>


        请输入入学时间 <input
            name="worktime" required="required" type="date"
            class="form-control" required="required">
        <br/>


        <h3 align="center" style="color:green"><input value="添加" style="width: 20%;,margin-left:55%;" type="submit"
                                                      class="btn btn-primary"></h3>

    </form>
</div>


</body>
</html>