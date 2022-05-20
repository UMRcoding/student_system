<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <link rel="icon" href="/favicon.ico">
    <title>学生管理系统</title>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header custom-header">

        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item slide-sidebar" lay-unselect>
                <a href="javascript:;" class="icon-font"><i class="ai ai-menufold"></i></a>
            </li>
        </ul>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">ADMIN</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/login.jsp">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side custom-admin">
        <div class="layui-side-scroll">

            <div class="custom-logo">
                <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""/>
                <h1>学生管理系统</h1>
            </div>
            <ul id="Nav" class="layui-nav layui-nav-tree">
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe609;</i>
                        <em></em>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="welcome.jsp">控制台</a></dd>
                    </dl>
                </li>


                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe857;</i>
                        <em>学生信息管理</em>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/stulist.do">查询学生</a></dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/stutoadd.do">添加学生</a>
                        </dd>
                    </dl>
                </li>


            </ul>

        </div>
    </div>

    <div class="layui-body">
        <div class="layui-tab app-container" lay-allowClose="true" lay-filter="tabs">
            <ul id="appTabs" class="layui-tab-title custom-tab"></ul>
            <div id="appTabPage" class="layui-tab-content"></div>
        </div>
    </div>

    <div class="layui-footer">
        <p>© 学生管理系统</p>
    </div>

    <div class="mobile-mask"></div>
</div>
<script src="${pageContext.request.contextPath}/assets/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js" data-main="home"></script>
</body>
</html>