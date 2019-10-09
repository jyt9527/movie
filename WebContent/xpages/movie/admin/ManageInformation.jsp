<%@ page language="java"
	import="java.util.*,com.life113.movie.Pojo.Information"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员主页</title>
<!-- 下面这一行尽量不要省去，目的是为了保证中文不乱码-->
<meta charset="UTF-8">
<!-- 新Bootstrap核心css文件 -->
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">

<!--可选的Bootstrap主题文件(一般不引入)  -->
<link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css">

<!--jsquery文件。务必在bootstrap.min.js之前引入  -->
<script src="../bootstrap/js/jquery-3.3.1.min.js" type="text/javascript">
	
</script>
<!-- 最新的Bootstrap核心JavaScript文件 -->
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript">
	
</script>
<style type="text/css">
.jz {
	text-align: center;
}

th {
	text-align: center;
	vertical-align: middle
}
</style>
<script type="text/javascript">
	function myAction(pid) {
		document.forms[0].id.value = pid;
		document.forms[0].submit();
	}

	function ConfirmDel() {
		if (confirm("真的要删除吗？")) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
	<div class="container">
		<h4>欢迎您，管理员admin</h4>
		<h1 class="jz">管理员界面</h1>

		<div class="row">
			<!-- 导航 -->
			<div style="background-color: rgba(0, 0, 0, 0.2)">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#Information"
						aria-controls="profile" role="tab" data-toggle="tab">影视资讯管理</a></li>
					<li role="presentation"><a href="#Demand" aria-controls="home"
						role="tab" data-toggle="tab">用户需求管理</a></li>
					<li role="presentation"><a href="#Comment"
						aria-controls="home" role="tab" data-toggle="tab">用户评论管理</a></li>
				</ul>
			</div>
			<!-- 主体 -->
			<div id="myTabContent" class="tab-content  ">
				<!-- 用户需求管理 -->
				<div id="Demand" class="tab-pane fade ">
					<h2 class="jz">用户需求管理</h2>
					<br>
					<table style="text-align: center" border="1" align="center">
						<tr>
							<th>用户名</th>
							<th>问题</th>
							<th>时间</th>
							<th>删除</th>
						</tr>
						<c:forEach items="${sessionScope.demList}" var="dem">
							<tr>
								<td>${dem.userName}</td>
								<td>${dem.userDemand}</td>
								<td>${dem.date}</td>
								<td><a
									href="../../../AdminManageInforAndDem?demId=${dem.id }&operator=demandDelete"
									onclick="javascript:return ConfirmDel();" target="main">删除</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!-- 影视资讯管理 -->
				<div id="Information" style="text-align: center"
					class="tab-pane fade in active">
					<h2 class="jz">影视资讯管理</h2>
					<table border="1">
						<tr>
							<th>id</th>
							<th>类别</th>
							<th>标题</th>
							<th>地址</th>
							<th>图片</th>
							<th>简概</th>
							<th>评论</th>
							<th>操作</th>
						</tr>
						<tr>
							<td colspan="8"><a href="addInformation.jsp">添加新信息</a></td>
						</tr>
						<c:forEach items="${sessionScope.inforList}" var="infor">
							<tr align="center">

								<td width="10">${infor.id}</td>
								<td width="80">${infor.pagination}</td>
								<td width="120">${infor.headline}</td>
								<td width="0">${infor.headline_url}</td>
								<td width="50">${infor.photo}</td>
								<td width="150">${infor.brief}</td>
								<td width="100">${infor.comment}</td>
								<td width="120"><a
									href="../../../AdminManageInforAndDem?id=${infor.id }&operator=edit">编辑</a>
									|| <a
									href="../../../AdminManageInforAndDem?id=${infor.id }&operator=delete"
									onclick="javascript:return ConfirmDel();" target="main">删除</a></td>

							</tr>
						</c:forEach>
						<tr>
							<td colspan="8"><a href="addInformation.jsp">添加新信息</a></td>
						</tr>
					</table>
				</div>

				<!-- 评论管理 -->
				<div id="Comment" style="text-align: center" class="tab-pane fade ">
					<h2 class="jz">评论管理</h2>
					<table border="1">
						<tr>
							<th>*</th>
							<th>*</th>
							<th>*</th>
							<th>*</th>
							<th>*</th>
							<th>*</th>
							<th>*</th>
							<th>*</th>
						</tr>

						<!--<c:forEach items="${sessionScope.inforList}" var="infor">
							<tr align="center">
								<td width="10">${infor.id}</td>
								<td width="80">${infor.pagination}</td>
								<td width="120">${infor.headline}</td>
								<td width="0">${infor.headline_url}</td>
								<td width="50">${infor.photo}</td>
								<td width="150">${infor.brief}</td>
								<td width="100">${infor.comment}</td>
								<td width="120"><a
									href="../../../AdminManageInforAndDem?id=${infor.id }&operator=edit">编辑</a>
									|| <a
									href="../../../AdminManageInforAndDem?id=${infor.id }&operator=delete"
									onclick="javascript:return ConfirmDel();" target="main">删除</a></td>

							</tr>
						</c:forEach>-->
						<tr>
							<td colspan="8"><a href="#">---------------------------</a></td>
						</tr>
					</table>
				</div>

			</div>
			<h3 class="jz">
				<a href="#">退出</a>
			</h3>
		</div>
	</div>
</body>
</html>