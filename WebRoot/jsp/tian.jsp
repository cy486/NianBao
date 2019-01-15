<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>表单填写</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/layui/css/layui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/tools/frame/static/css/style.css">
<link rel="icon" href="${pageContext.request.contextPath }/tools/frame/static/image/code.png">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/areaCodes.js"></script>
</head>

<body>
	<form class="layui-form layui-form-pane"
		action="${pageContext.request.contextPath }/mongo?method=addProducts"
		method="post">
		<fieldset class="layui-elem-field layui-field-title"
			style="margin-top: 50px;">
			<legend>请填写以下四项信息</legend>
		</fieldset>
		<div class="layui-collapse">
			<div class="layui-colla-item">
				<h2 class="layui-colla-title">自动读取的信息（不可修改）</h2>
				<div class="layui-colla-content layui-show">
					<div class="layui-form-item">
						<label class="layui-form-label">平台名称</label>
						<div class="layui-input-block">
							<input type="text" name="ptmx" autocomplete="on"
								placeholder="请输入标题" class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">平台编号</label>
						<div class="layui-input-block">
							<input type="text" name="ptbh" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">批准年月</label>
						<div class="layui-input-block">
							<input type="text" name="ptny" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">审批文号</label>
						<div class="layui-input-block">
							<input type="text" name="pzwh" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">技术领域</label>
						<div class="layui-input-block">
							<input type="text" name="ly" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input"
								>
						</div>
					</div>
				</div>
			</div>

			<div class="layui-colla-item">
				<h2 class="layui-colla-title">平台基本信息</h2>
				<div class="layui-colla-content">

					<div class="layui-form-item" align="left">
						<label class="layui-form-label">平台级别</label>
						<div class="layui-input-block">
							<input type="radio" name="jibie" value="国家级" title="国家级" checked="">
							<input type="radio" name="jibie" value="省级" title="省级">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">所在区县</label>
						<div class="layui-input-inline">
							<select name="quiz1">
								<option value="">请选择省</option>
								<option value="浙江" selected="">浙江省</option>
								<option value="你的工号">江西省</option>
								<option value="你最喜欢的老师">福建省</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz2">
								<option value="">请选择市</option>
								<option value="杭州">杭州</option>
								<option value="宁波" disabled="">宁波</option>
								<option value="温州">温州</option>
								<option value="温州">台州</option>
								<option value="温州">绍兴</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz3">
								<option value="">请选择县/区</option>
								<option value="西湖区">西湖区</option>
								<option value="余杭区">余杭区</option>
								<option value="拱墅区">临安市</option>
							</select>
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">服务的主要经济行业</label>
						<div class="layui-input-inline">
							<select name="quiz1">
								<option value="">一级行业</option>
								<option value="浙江" selected="">物流</option>
								<option value="你的工号">江西省</option>
								<option value="你最喜欢的老师">福建省</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz2">
								<option value="">二级行业</option>
								<option value="杭州">杭州</option>
								<option value="宁波" disabled="">2</option>
								<option value="温州">温州</option>
								<option value="温州">台州</option>
								<option value="温州">绍兴</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz3">
								<option value="">三级行业</option>
								<option value="西湖区">信息</option>
								<option value="余杭区">余杭区</option>
								<option value="拱墅区">临安市</option>
							</select>
						</div>
					</div>


					<div class="layui-form-item">
						<label class="layui-form-label">所属主要学科</label>
						<div class="layui-input-inline">
							<select name="quiz1">
								<option value="">一级学科</option>
								<option value="浙江" selected="">计算机</option>
								<option value="你的工号">江西省</option>
								<option value="你最喜欢的老师">福建省</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz2">
								<option value="">二级学科</option>
								<option value="杭州">杭州</option>
								<option value="宁波" disabled="">互联网</option>
								<option value="温州">温州</option>
								<option value="温州">台州</option>
								<option value="温州">绍兴</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz3">
								<option value="">三级学科</option>
								<option value="西湖区">1</option>
								<option value="余杭区">余杭区</option>
								<option value="拱墅区">临安市</option>
							</select>
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">依托单位名称</label>
						<div class="layui-input-block">
							<input type="text" name="dw" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>


					<div class="layui-form-item">
						<label class="layui-form-label">依托单位组织机构代码</label>
						<div class="layui-input-block">
							<input type="text" name="dm" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">依托单位法人代表姓名</label>
						<div class="layui-input-block">
							<input type="text" name="xm" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>


					<div class="layui-form-item">
						<label class="layui-form-label">办公电话</label>
						<div class="layui-input-block">
							<input type="text" name="dh" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">依托单位类型</label>
						<div class="layui-input-block">
							<input type="radio" name="sex" value="企业" title="企业" checked="">
							<input type="radio" name="sex" value="科研机构" title="科研机构">
							<input type="radio" name="sex" value="高等院校" title="高等院校">
							<input type="radio" name="sex" value="检测机构" title="检测机构">
							<input type="radio" name="sex" value="医疗机构" title="医疗机构">
							<input type="radio" name="sex" value="政府机构" title="政府机构">
							<input type="radio" name="sex" value="社团组织" title="社团组织">
							<input type="radio" name="sex" value="其他" title="其他">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">共建单位</label>
						<div class="layui-input-block">
							<input type="text" name="title" lay-verify="title"
								autocomplete="off" placeholder="请输入标题" class="layui-input">
						</div>
					</div>

				</div>

				<div class="layui-colla-item">
					<h2 class="layui-colla-title">平台主任信息</h2>
					<div class="layui-colla-content">
						<div class="layui-form-item">
							<label class="layui-form-label">姓名</label>
							<div class="layui-input-block">
								<input type="text" name="yzxm" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">性别</label>
							<div class="layui-input-block">
								<input type="text" name="yzxb" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">出生日期</label>
							<div class="layui-input-block">
								<input type="text" name="xsny" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">职称</label>
							<div class="layui-input-block">
								<input type="text" name="zc" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">所学专业</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">学历</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">学位</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">办公电话</label>
							<div class="layui-input-block">
								<input type="text" name="dh" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">手机</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">e-mail</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

					</div>
				</div>

				<div class="layui-colla-item">
					<h2 class="layui-colla-title">网站信息</h2>
					<div class="layui-colla-content">
						<div class="layui-form-item">
							<label class="layui-form-label">平台网站名称</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">网址</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">平台通讯地址</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<label class="layui-form-label">邮编</label>
							<div class="layui-input-block">
								<input type="text" name="title" lay-verify="title"
									autocomplete="off" placeholder="请输入标题" class="layui-input">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
		<input class="layui-btn layui-btn-big" type="submit" align="center">
		</div>
	</form>
	<script src="../tools/frame/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		layui.use([ 'form', 'layedit', 'laydate', 'element' ], function() {
			var form = layui.form,
				layer = layui.layer,
				layedit = layui.layedit,
				laydate = layui.laydate,
				element = layui.element;
	
			//创建一个编辑器
			var editIndex = layedit.build('LAY_demo_editor');
	
			//监听折叠
			element.on('collapse(test)', function(data) {
				layer.msg('展开状态：' + data.show);
			});
	
			//监听提交
			form.on('submit(sub)', function(data) {
				layer.alert(JSON.stringify(data.field), {
					title : '最终的提交信息'
				});
				return false;
			});
	
	
	
	
		});
	</script>
</body>
</html>
