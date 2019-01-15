<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>年报列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/layui/css/layui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/static/css/style.css">
<link rel="icon" href="${pageContext.request.contextPath }/tools/frame/static/image/code.png">
</head>

<body class="body">
	<div class="my-btn-box">
		<span class="fl">
		 <a class="layui-btn layui-btn-danger radius btn-delect" id="btn-delete-all">批量删除</a>
		 <a class="layui-btn btn-add btn-default" id="btn-add" href="../jsp/tian.jsp">添加</a> 
		 <a class="layui-btn btn-add btn-default" id="btn-refresh">
		 <i class="layui-icon">&#x1002;</i></a>
		</span> 
		<span class="fr"> 
		<form method="post" action="${pageContext.request.contextPath }/mongo?method=findProductsByPid">
		<span class="layui-form-label">搜索条件：</span>
			<div class="layui-input-inline">
				<input type="text" autocomplete="off" placeholder="请输入搜索条件"
					class="layui-input" name="jibie">
			</div>
			<input type="submit" class="layui-btn mgl-20" value="查询">
		</span>
		</form>
	</div>
	<table class="layui-table" lay-even="" lay-skin="row">
		<colgroup>
			<col width="150">
			<col width="150">
			<col width="150">
			<col width="150">
			<col width="300">
			<col>
		</colgroup>
		<thead>
			<tr>
				<th>平台名称</th>
				<th>平台级别</th>
				<th>平台主任姓名</th>
				<th>平台主任电话</th>
				<th>平台网址</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products }" var="p">

			<tr>
				<td>${p.ptbh}</td>
				<td>${p.jibie }</td>
				<td>${p.dw}</td>
				<td>${p.ptbh}</td>
				<td>${p.ptbh}</td>
				<td><a
					href="${pageContext.request.contextPath }/mongo?method=deleteProductByPid&pid=${p.ptbh}">删除</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<script type="text/javascript">
		function find(){
		window.location.replace("${pageContext.request.contextPath }/mongo?jibie=");
		}
	</script>
</body>
</html>
