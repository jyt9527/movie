<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="java.util.*,com.life113.movie.Pojo.Information"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>影视页面</title>
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
<style type="text/css">
a {
	color: #000;
}

.box_office a {
	font-size: 15px;
	color: #000;
}

.cinema_info {
	padding-top: 10px;
}

.cinema_info a {
	font-size: 15px;
	padding-right: 10px;
	color: #333;
	line-height: 30px;
}
</style>
</head>
<body background="images/background.jpg">


	<div class="container" style="background-color: rgba(0, 0, 0, 0.1)">
		<br> <br>
		<c:import url="common/header.jsp"></c:import>
		<br>
		<c:import url="common/nav.jsp"></c:import>
		<div>
			<!--主体-->
			<div class="row" style="background-color: #fdfcf8">
				<div class="col-md-8">
					<div class="row ">
						<div class="col-md-8 col-md-offset-2">
							<!--可切换导航-->
							<ul id="myTab" class="nav nav-tabs"
								style="background-color: rgba(0, 0, 0, 0.3)">
								<li class="active"><a href="#New" data-toggle="tab">
										最新报道 </a></li>
								<li><a href="#Chinese" data-toggle="tab">华语资讯</a></li>
								<li><a href="#KKC" data-toggle="tab">日韩资讯</a></li>
								<li><a href="#Occident" data-toggle="tab">欧美资讯</a></li>
								<li><a href="#filmReview" data-toggle="tab">精美影评</a></li>
							</ul>
						</div>
					</div>
					<br>
					<!--资讯-->
					<div id="myTabContent" class="tab-content">
						<!--最新资讯-->
						<div class="tab-pane fade in active" id="New">
							<c:forEach items="${sessionScope.inforList_New }" var="infor_new">
								<div style="background-color: rgba(0, 0, 0, 0.02);">
									<h3>
										<a href="${infor_new.headline_url }" style="color: #000">
											${infor_new.headline }</a>
									</h3>
									<div class="row">
										<div class="col-md-4  ">
											<a href="${infor_new.headline_url }"> <img
												src="${infor_new.photo }" name="picture" width="108%"
												height="123" /></a>
										</div>
										<div class="col-md-8  ">
											<p>&nbsp;&nbsp;${infor_new.brief }</p>
										</div>
									</div>
									&nbsp;&nbsp; <a href="${infor_new.view }">查看</a>
									<p style="float: right;">
										<a href="#">评论</a>&nbsp;|&nbsp; <a href="#">分享</a>&nbsp;&nbsp;
									</p>
								</div>
							</c:forEach>
						</div>
						<!--华语资讯-->
						<div class="tab-pane fade in active" id="Chinese">
							<c:forEach items="${sessionScope.inforList_Chinese }"
								var="infor_chinese">
								<div style="background-color: rgba(0, 0, 0, 0.02);">
									<h3>
										<a href="${infor_chinese.headline_url }" style="color: #000">
											${infor_chinese.headline }</a>
									</h3>
									<div class="row">
										<div class="col-md-4  ">
											<a href="${infor_chinese.headline_url }"> <img
												src="${infor_chinese.photo }" name="picture" width="108%"
												height="123" /></a>
										</div>
										<div class="col-md-8  ">
											<p>&nbsp;&nbsp;${infor_chinese.brief }</p>
										</div>
									</div>
									&nbsp;&nbsp; <a href="${infor_chinese.view }">查看</a>
									<p style="float: right;">
										<a href="#">评论</a>&nbsp;|&nbsp; <a href="#">分享</a>&nbsp;&nbsp;
									</p>
								</div>
							</c:forEach>
						</div>
						<!--日韩资讯-->
						<div class="tab-pane fade in active" id="KKC">
							<c:forEach items="${sessionScope.inforList_KKC }" var="infor_kkc">
								<div style="background-color: rgba(0, 0, 0, 0.02);">
									<h3>
										<a href="${infor_kkc.headline_url }" style="color: #000">
											${infor_kkc.headline }</a>
									</h3>
									<div class="row">
										<div class="col-md-4  ">
											<a href="${infor_kkc.headline_url }"><img
												src="${infor_kkc.photo }" name="picture" width="108%"
												height="123" /></a>
										</div>
										<div class="col-md-8  ">
											<p>&nbsp;&nbsp;${infor_kkc.brief }</p>
										</div>
									</div>
									&nbsp;&nbsp; <a href="${infor_kkc.view }">查看</a>
									<p style="float: right;">
										<a href="#">评论</a>&nbsp;|&nbsp; <a href="#">分享</a>&nbsp;&nbsp;
									</p>
								</div>
							</c:forEach>
						</div>
						<!--欧美资讯-->
						<div class="tab-pane fade in active" id="Occident">
							<c:forEach items="${sessionScope.inforList_Occident }"
								var="infor_occident">
								<div style="background-color: rgba(0, 0, 0, 0.02);">
									<h3>
										<a href="${infor_occident.headline_url }" style="color: #000">
											${infor_occident.headline }</a>
									</h3>
									<div class="row">
										<div class="col-md-4  ">
											<a href="${infor_occident.headline_url }"><img
												src="${infor_occident.photo }" name="picture" width="108%"
												height="123" /></a>
										</div>
										<div class="col-md-8  ">
											<p>&nbsp;&nbsp;${infor_occident.brief }</p>
										</div>
									</div>
									&nbsp;&nbsp; <a href="${infor_occident.view }">查看</a>
									<p style="float: right;">
										<a href="#">评论</a>&nbsp;|&nbsp; <a href="#">分享</a>&nbsp;&nbsp;
									</p>
								</div>
							</c:forEach>
						</div>

						<!--精美影评-->
						<div class="tab-pane fade in active" id="filmReview">
							<c:forEach items="${sessionScope.inforList_filmReview }"
								var="infor_filmReview">
								<div style="background-color: rgba(0, 0, 0, 0.02);">
									<h3>
										<a href="${infor_filmReview.headline_url }"
											style="color: #000"> ${infor_filmReview.headline }</a>
									</h3>
									<div class="row">
										<div class="col-md-4  ">
											<a href="${infor_filmReview.headline_url }"><img
												src="${infor_filmReview.photo }" name="picture" width="108%"
												height="123" /></a>
										</div>
										<div class="col-md-8  ">
											<p>&nbsp;&nbsp;${infor_filmReview.brief }</p>
										</div>
									</div>
									&nbsp;&nbsp; <a href="${infor_filmReview.view }">查看</a>
									<p style="float: right;">
										<a href="#">评论</a>&nbsp;|&nbsp; <a href="#">分享</a>&nbsp;&nbsp;
									</p>
								</div>
							</c:forEach>
						</div>

					</div>
					<br>
					<br>
					<div style="text-align: center">
						<h2>是不是没找到你想看的？</h2>
						<h3>可以向我们发送意见</h3>
						<form action="../../UserToAamin" method="post">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">点击发送</button>
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button data-dismiss="modal" class="close" type="button">
												<span aria-hidden="true">×</span><span class="sr-only">Close</span>
											</button>
											<h4 class="modal-title">提问</h4>
										</div>
										<div class="modal-body">
											<p>问题描述</p>
											<textarea class="form-control" name="demand"></textarea>
										</div>
										<div class="modal-footer">
											<button data-dismiss="modal" class="btn btn-default"
												type="button">关闭</button>
											<button class="btn btn-primary" type="submit">提交</button>
										</div>
									</div>
								</div>
							</div>
							<div style="height: 200px"></div>
						</form>
					</div>
				</div>
				<!--票房和影院导航-->
				<div class="col-md-4">
					<h3 style="text-align: center; color: #000">票房排行榜</h3>
					<table style="text-align: center; font-size: 16px">
						<tr>
							<td width="80" height="40">
								<p style="color: #F00">
									<b>1</b>
								</p>
							</td>
							<td width="188"><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=fyhmpew3490104"
								target="_blank" title="无双"> 无双 </a></td>
							<td width="93"><b>－</b></td>
						</tr>

						<tr>
							<td height="40">
								<p style="color: #00F">
									<b>2</b>
								</p>
							</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=fykywuc4300889"
								target="_blank" title="找到你"> 找到你 </a></td>
							<td>
								<p style="color: #F00">
									<b>↑</b>
								</p>
							</td>
						</tr>

						<tr>
							<td height="40">
								<p style="color: #6F0">
									<b>3</b>
								</p>
							</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=hhxaafz0769559"
								target="_blank" title="嗝嗝老师"> 嗝嗝老师 </a></td>
							<td>
								<p style="color: #F00">
									<b>↑</b>
								</p>
							</td>
						</tr>


						<tr>
							<td height="40">4</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=hitesuy3831945"
								target="_blank" title="影"> 影 </a></td>
							<td>
								<p style="color: #6F0">
									<b>↓</b>
								</p>
							</td>
						</tr>

						<tr>
							<td height="40">5</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=fypxrpp3943258"
								target="_blank" title="我的间谍男友"> 我的间谍男友 </a></td>
							<td><b>－</b></td>
						</tr>

						<tr>
							<td height="40">6</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=fypceiq0262562"
								target="_blank" title="雪怪大冒险"> 雪怪大冒险 </a></td>
							<td><b>－</b></td>
						</tr>

						<tr>
							<td height="40">7</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=hhtfwqr7700908"
								target="_blank" title="宝贝儿"> 宝贝儿 </a></td>
							<td><b>－</b></td>
						</tr>

						<tr>
							<td height="40">8</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=fyrpeie1029159"
								target="_blank" title="李茶的姑妈"> 李茶的姑妈 </a></td>
							<td>
								<p style="color: #6F0">
									<b>↓</b>
								</p>
							</td>
						</tr>

						<tr>
							<td height="40">9</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=fymesii5066698"
								target="_blank" title="胖子行动队"> 胖子行动队 </a></td>
							<td>
								<p style="color: #6F0">
									<b>↓</b>
								</p>
							</td>
						</tr>

						<tr>
							<td height="40">10</td>
							<td><a
								href="http://ent.sina.com.cn/ku/movie_info_index.d.html?type=movie&amp;id=fykpzey3933608"
								target="_blank" title="悲伤逆流成河"> 悲伤逆流成河 </a></td>
							<td>
								<p style="color: #6F0">
									<b>↓</b>
								</p>
							</td>
						</tr>
					</table>


					<br /> <br />
					<!-- 影城推荐 -->
					<h3 style="text-align: center; color: #000">影城推荐</h3>


					<div class="cinema_info">
						<a href="http://ent.sina.com.cn/f/m/wdgjycbj/" target="_blank">万达影城</a>
						<a href="http://ent.sina.com.cn/f/m/umebjsj/" target="_blank">UME影城</a>
						<a href="http://ent.sina.com.cn/f/m/jygjyc/" target="_blank">金逸院线</a>
						<a href="http://ent.sina.com.cn/f/m/clylyc/" target="_blank">耀莱成龙</a>
						<br> <a href="http://ent.sina.com.cn/z/lmayc/"
							target="_blank">卢米埃影城</a> <a
							href="http://ent.sina.com.cn/f/m/blhyc/" target="_blank">百老汇影城</a>
						<a href="http://ent.sina.com.cn/f/m/jiahuacinema/" target="_blank">嘉华影城</a>
						<a href="http://ent.sina.com.cn/f/m/sddyy/" target="_blank">首都影院</a>
						<br> <a href="http://ent.sina.com.cn/zt_d/cqsh/"
							target="_blank">传奇奢华影城</a> <a
							href="http://ent.sina.com.cn/f/m/hyxdyy/" target="_blank">华谊兄弟</a>
						<a href="http://ent.sina.com.cn/zt_d/cqsh/" target="_blank">传奇奢华</a>
						<a href="http://ent.sina.com.cn/f/m/cgvyc/" target="_blank">星聚汇星星奥体店</a>
						<a href="http://ent.sina.com.cn/f/m/bjddyc/" target="_blank">东都影城</a>
					</div>
					<br>
					<div class="TPP" style="text-align: center">
						<a
							href="http://sax.sina.com.cn/click?type=nonstd&t=REowMDAxMzA1OQ%3D%3D&sign=455ed1d064af23e3&url=http%3A%2F%2Fdianying.taobao.com%2F"
							target="_blank"><img src="images/taopiaopiao.jpg" alt=""></a>
					</div>
				</div>
			</div>
			<c:import url="common/bottom.jsp"></c:import>
		</div>
</body>
</html>