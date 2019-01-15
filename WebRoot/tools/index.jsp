<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>河北省创新平台年报统计系统</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/tools/frame/layui/css/layui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/tools/frame/static/css/style.css">
<link rel="icon"
	href="${pageContext.request.contextPath }/tools/frame/static/image/code.png">
</head>

<body>

	<!-- layout admin -->
	<div class="layui-layout layui-layout-admin">
		<!-- 添加skin-1类可手动修改主题为纯白，添加skin-2类可手动修改主题为蓝白 -->
		<!-- header -->
		<div class="layui-header my-header">
			<a href="index.html"> <!--<img class="my-header-logo" src="" alt="logo">-->
				<div class="my-header-logo">选项</div>
			</a>
			<div class="my-header-btn">
				<button class="layui-btn layui-btn-small btn-nav">
					<i class="layui-icon">&#xe65f;</i>
				</button>
			</div>

			<!--         顶部左侧添加选项卡监听 -->
			<!--         <ul class="layui-nav" lay-filter="side-top-left"> -->
			<!--             <li class="layui-nav-item"><a href="javascript:;" href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></li>
<!--             <li class="layui-nav-item"> -->
			<!--                 <a href="javascript:;"><i class="layui-icon">&#xe621;</i>基础</a> -->
			<!--                 <dl class="layui-nav-child"> -->
			<!--                     <dd><a href="javascript:;" href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></dd> -->
			<!--                     <dd><a href="javascript:;" href-url="demo/form.html"><i class="layui-icon">&#xe621;</i>表单</a></dd> -->
			<!--                 </dl> -->
			<!--             </li>-->
			-->
			<!--         </ul> -->

			<!-- 顶部右侧添加选项卡监听 -->
			<ul class="layui-nav my-header-user-nav" lay-filter="side-top-right">
				<li class="layui-nav-item"><a href="javascript:;" class="pay"
					href-url="">支持作者</a></li>
				<li class="layui-nav-item"><a class="name" href="javascript:;"><i
						class="layui-icon">&#xe629;</i>主题</a>
					<dl class="layui-nav-child">
						<dd data-skin="0">
							<a href="javascript:;">默认</a>
						</dd>
						<dd data-skin="1">
							<a href="javascript:;">纯白</a>
						</dd>
						<dd data-skin="2">
							<a href="javascript:;">蓝白</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a class="name" href="javascript:;"><img
						src="./frame/static/image/code.png" alt="logo"> Admin </a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:;" href-url="demo/login.html"><i
								class="layui-icon">&#xe621;</i>登录页</a>
						</dd>
						<dd>
							<a href="/"><i class="layui-icon">&#x1006;</i>退出</a>
						</dd>
					</dl></li>
			</ul>

		</div>
		<!-- side -->
		<div class="layui-side my-side">
			<div class="layui-side-scroll">
				<ul class="layui-nav layui-nav-tree" lay-filter="side-main">
					<li class="layui-nav-item  layui-nav-itemed"><a
						href="javascript:;"><i class="layui-icon">&#xe620;</i>表单填写</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" href-url="../jsp/tian.jsp"><i
									class="layui-icon">&#xe621;</i>基础表填写</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="../jsp/list.jsp"><i
									class="layui-icon">&#xe621;</i>表单审核</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;"><i
							class="layui-icon">&#xe628;</i>图表信息</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" href-url="../jsp/map.jsp"><i
									class="layui-icon">&#xe621;</i>图表</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a target="_blank""><i
							class="layui-icon">&#xe61e;</i>个人信息修改</a></li>
				</ul>

			</div>
		</div>
		<!-- body -->
		<div class="layui-body my-body">
			<div class="layui-tab layui-tab-card my-tab" lay-filter="card"
				lay-allowClose="true">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="1"><span><i
							class="layui-icon">&#xe638;</i>欢迎页</span></li>
				</ul>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<iframe id="iframe" src="" frameborder="0"></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		<div class="layui-footer my-footer"></div>
	</div>

	<!-- <!-- pay -->

	<!-- <div class="my-pay-box none"> -->
	<!--     <div><img src="./frame/static/image/zfb.png" alt="支付宝"><p>支付宝</p></div> -->
	<!--     <div><img src="./frame/static/image/wx.png" alt="微信"><p>微信</p></div> -->
	<!-- </div> -->

	<!-- 右键菜单 -->
	<div class="my-dblclick-box none">
		<table class="layui-tab dblclick-tab">
			<tr class="card-refresh">
				<td><i class="layui-icon">&#x1002;</i>刷新当前标签</td>
			</tr>
			<tr class="card-close">
				<td><i class="layui-icon">&#x1006;</i>关闭当前标签</td>
			</tr>
			<tr class="card-close-all">
				<td><i class="layui-icon">&#x1006;</i>关闭所有标签</td>
			</tr>
		</table>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/tools/frame/layui/layui.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/tools/frame/static/js/vip_comm.js"></script>
	<!-- <!-- 	<script type="text/javascript"> -->
	-->
	<!-- // layui.use(['layer','vip_nav'], function () { -->

	<!-- //     // 操作对象 -->
	<!-- //     var layer       = layui.layer -->
	<!-- //         ,vipNav     = layui.vip_nav -->
	<!-- //         ,$          = layui.jquery; -->

	<!-- //     // 顶部左侧菜单生成 [请求地址,过滤ID,是否展开,携带参数] -->
	<!-- //     vipNav.top_left('./json/nav_top_left.json','side-top-left',false); -->
	<!-- //     // 主体菜单生成 [请求地址,过滤ID,是否展开,携带参数] -->
	<!-- //     vipNav.main('./json/nav_main.json','side-main',true); -->

	<!-- //     // you code ...s -->

	<!-- // }); -->
	<!-- <!-- </script> -->
	-->
</body>
</html>
