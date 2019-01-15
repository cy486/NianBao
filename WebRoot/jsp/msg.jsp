<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>结果页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/layui/css/layui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/static/css/style.css">
<link rel="icon" href="${pageContext.request.contextPath }/tools/frame/static/image/code.png">
</head>

<body class=body>
	<div class="my-page-box">
	<h4>${msg }</h4>
    <p class="msg">（请选择以下操作）</p>
    <div class="my-btn-box">
        <a class="layui-btn layui-btn-small" href="${pageContext.request.contextPath }/jsp/tian.jsp">返回首页</a>
        <a class="layui-btn layui-btn-danger layui-btn-small "  href="${pageContext.request.contextPath }/mongo?method=findAllProducts">查看所以填报信息</a>
    </div>
</div>
  </body>
</html>