<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/ad_index.css" />
    <link rel="stylesheet" href="../css/font-awesome.css" />
</head>

<body>
<div class="ad_top">
    <p>学生成绩管理系统<br/>
        <em style="font-size:24px;">Student Achievement Management System</em><br/></p>
    <%--<form class="" role="search" target="main">
        <div class="form-group">
            <input type="text" class="form-control search" placeholder="查询学生成绩，请输入学生学号：">
            <button type="submit" class="fa"><span class="glyphicon glyphicon-search"></span></button></div>
    </form>--%>

</div>

</body>
</html>
