<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>导航</title>
</head>
<body>
	<div class="nav">
		<div class="row">
			<div class="col-md-4  ">
				<img src="images/113lifelogos.png" name="logo" width="53%" height="123"
					id="Insert_logo" style="background-color: #8090AB; display: block;" />
			</div>
			<br>
			<div id="search" class="col-md-4 col-md-offset-2">
				<form class="bs-example bs-example-form" role="form">
					<p class="text-center">
					<div class="input-group">
						<input type="text" class="form-control input-lg"
							placeholder="请输入你要搜索的内容"> <span class="input-group-btn">
							<button class="btn btn-info btn-search input-lg">搜索</button>
						</span>
					</div>
				</form>
			</div>

		</div>

	</div>

	<!--导航链接-->
	<nav class="navbar " role="navigation" >
							    <div class="container-fluid" style="background-color: #ffc125">
										    <div class="navbar-header"><a class="navbar-brand" href="#">快乐生活</a></div>
										    <div>
											        <ul class="nav navbar-nav">
												            <li class="active"><a href="#">首页</a></li>
												            <li><a href="#">旅游社区</a></li>
												            <li><a href="#">影视速递</a></li>
												            <li><a href="#">我来帮忙</a></li>
												            <li><a href="#">SVN</a></li>
												            <li><a href="#">SVN</a></li>
												            <li class="dropdown">
												                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
												                    Java <b class="caret"></b>
												                </a>
											                <ul class="dropdown-menu">
													                    <li><a href="#">jmeter</a></li>
													                    <li><a href="#">EJB</a></li>
													                    <li><a href="#">Jasper Report</a></li>
													                    <li class="divider"></li>
													                    <li><a href="#">分离的链接</a></li>
													                    <li class="divider"></li>
													                    <li><a href="#">另一个分离的链接</a></li>
											                </ul>
											            </li>
											        </ul>
									    </div>
						    	</div>
					</nav>
</body>
</html>