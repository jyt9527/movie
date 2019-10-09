<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>头部</title>
</head>
<body>
	<div class="row">
		<!--头部-->
		<nav class="navbar " role="navigation">
			<div class="container-fluid" style="background-color: #ffffff;">
				<div class="col-md-4">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">欢迎来到113生活</a></li>
						<li><a href="#">手机版客户端</a></li>
					</ul>
				</div>
				<div class="col-md-offset-3 col-md-5">
					<ul class="nav navbar-nav">
						<li><a href="#">请登录/注册</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">我的113 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">我的发表</a></li>
								<li><a href="#">我的收藏</a></li>
								<li class="divider"></li>
								<li><a href="#">个人中心</a></li>
								<li class="divider"></li>
								<li><a href="#">退出登录</a></li>
							</ul></li>
						<li><a href="#">帮助中心</a></li>
						<li><a href="#">网站导航</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>