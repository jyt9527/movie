<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员添加影视资讯</title>
<!--jsquery文件。先引入  -->
<script src="bootstrap/js/jquery.min.js">
	
</script>
<!-- 新Bootstrap核心css文件 -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- 最新的Bootstrap核心JavaScript文件 -->
<script src="bootstrap/js/bootstrap.min.js">
	
</script>
<style type="text/css">
.jz {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="jz">添加影视资讯</h1>
		<form action="../../../AdminManageInforAndDem?operator=add"
			method="post">
			<table align="center" style="font-size: 20px; text-align: center">
				<tr>
					<td>标题</td>
					<td><input type="text" name="add_Headline"></td>
				</tr>
				<tr>
					<td>地址</td>
					<td><input type="text" name="add_Headline_url"></td>
				</tr>
				<tr>
					<td>简概</td>
					<td><input type="text" name="add_Brief"></td>
				</tr>

				<tr>
					<td>评论</td>
					<td><input type="text" name="add_Comment"></td>
				</tr>
				<tr>
					<td>图片</td>
					<td><input type="text" name="add_Photo"></td>
				</tr>
				<tr>
					<td>类别</td>
					<td align="center" colspan="5"><select name="add_Pagination">
							<option value="New">最新报道</option>
							<option value="Chinese">华语资讯</option>
							<option value="KKC">日韩资讯</option>
							<option value="Occident">欧美资讯</option>
							<option value="filmReview">精美影评</option>
					</select></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="提交" /><input
						type="reset" value="重置" /></td>
				</tr>
			</table>

		</form>

	</div>
</body>
</html>