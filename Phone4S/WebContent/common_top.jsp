<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setAttribute("basePath",request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="css/phone4s.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<title>Phone4S，您手机的4S店</title>
</head>
<body>
<div class="site-topbar">
    <div class="container">
        <div class="topbar-nav">
        	<a href="<%=request.getAttribute("basePath") %>" onclick="">Phone4S</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>" target="_blank" onclick="">苹果手机</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>" target="_blank" onclick="">安卓手机</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>" target="_blank" onclick="">热门APP</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>" target="_blank" onclick="">手机维修</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>" target="_blank" onclick="">手机心得</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>" target="_blank" onclick="">Phone4S移动版</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>" onclick="">选择你的国家</a>
        </div>
        <div class="topbar-info">
            <a href="<%=request.getAttribute("basePath") %>" onclick="">登录</a>
            <span class="sep">|</span><a href="<%=request.getAttribute("basePath") %>register.jsp" onclick="">注册</a>
        </div>
    </div>
</div>