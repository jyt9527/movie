<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LSN</title>
<!-- 新Bootstrap核心css文件 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!--可选的Bootstrap主题文件(一般不引入)  -->
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<!--jsquery文件。务必在bootstrap.min.js之前引入  -->
<script src="bootstrap/js/jquery-3.3.1.min.js" type="text/javascript">
	
</script>
<!-- 最新的Bootstrap核心JavaScript文件 -->
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript">
	
</script>
</head>
<body>
	<a class="btn btn-primary" role="button" data-toggle="collapse"
		href="#collapseExample" aria-expanded="false"
		aria-controls="collapseExample"> 超链接点击弹出div，再次点击关闭 </a>
	<button class="btn btn-primary" type="button" data-toggle="collapse"
		data-target="#collapseExample" aria-expanded="false"
		aria-controls="collapseExample">按钮 点击弹出div，再次点击关闭</button>
	<div class="collapse" id="collapseExample">
		<div class="well">...</div>
	</div>
</body>
</html>
