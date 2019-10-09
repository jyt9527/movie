<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员更新影视资讯</title>
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
<script type="text/javascript">
	function myBack() {
		location.href = "ShowAdminInforAndDem";
	}
</script>
<style type="text/css">
.jz {
	text-align: center;
}
</style>
</head>
<body>
	<h2 style="text-align: center">编辑信息</h2>
	<br />
	<br />
	<jsp:useBean id="infor" class="com.life113.movie.Pojo.Information"
		scope="request"></jsp:useBean>
	<form action="AdminManageInforAndDem?operator=save" method="post"
		name="inforForm">
		<table border="1" style="text-align: center" align="center">

			<tr>
				<td colspan="3"><font color="red">${requestScope.msg}</font></td>
			</tr>
			<tr>
				<td>主键id：</td>
				<td>
					<%--这里根据User类里面的属性而来--%> ${infor.id}
				</td>
				<td><input type="hidden" name="id" value="${infor.id}" /></td>
			</tr>
			<tr>
				<td>类别：</td>
				<td>${infor.pagination}</td>
				<td><select name="Pagination">
						<option value="New">最新报道</option>
						<option value="Chinese">华语资讯</option>
						<option value="KKC">日韩资讯</option>
						<option value="Occident">欧美资讯</option>
						<option value="filmReview">精美影评</option>
				</select></td>
			</tr>
			<tr>
				<td>标题：</td>
				<td>${infor.headline}</td>
				<td><input type="text" name="Headline"
					value="${infor.headline}" /></td>
			</tr>
			<tr>
				<td>地址：</td>
				<td>${infor.headline_url}</td>
				<td><input type="text" name="Headline_url"
					value="${infor.headline_url}" /></td>
			</tr>
			<tr>
				<td>简概：</td>
				<td>${infor.brief}</td>
				<td colspan=""><textarea name="Brief" rows="10" cols="30">
${infor.brief}
</textarea></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" name="submit" value="保存">
					<input type="button" value="返回" onclick="myBack()"></td>
			</tr>
		</table>
	</form>
</body>
</html>
