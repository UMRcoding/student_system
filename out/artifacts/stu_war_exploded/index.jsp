<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>登陆界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css"/>
    <style>
        body {
            font-size: 20px;
            color: #03e9f4;
            background: url(${pageContext.request.contextPath}/images/background.jpg) no-repeat;
            background-size: 100% 200%;
        }
    </style>
</head>
<body>
<div class="box1">
    <form action="${pageContext.request.contextPath}/login.do" method="post">
        <h1>学生管理系统</h1>
        <c:if test="${not empty msg}">
            <h6><font color="red">登录失败，密码不正确</font></h6>
        </c:if>
        <div class="form">账号: <input type="text" name="username" required placeholder="  请输入账号"/></div>
        <div class="form">密码: <input type="password" name="password" required placeholder="  请输入密码"/></div>
        <br>
        <button type="submit">登陆</button>
    </form>
</div>
</body>
</html>

