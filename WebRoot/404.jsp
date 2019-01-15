<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>404 你要的页面已经找不到了~</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/layui/css/layui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/static/css/style.css">
<link rel="icon" href="${pageContext.request.contextPath }/tools/frame/static/image/code.png">
</head>

<body class=body>
	<div class="my-page-box">
	<h3>404</h3>
    <p class="msg">Page Not Found</p>
    <p class="text">对不起,没有找到您所需要的页面,可能是URL不确定,或者页面已被移除。</p>
    <div class="my-btn-box">
        <a class="layui-btn layui-btn-small" href="./tools/index.jsp">返回首页</a>
        <a class="layui-btn layui-btn-danger layui-btn-small " href="javascript:;">返回上页</a>
    </div>
</div>
  </body>
</html>
