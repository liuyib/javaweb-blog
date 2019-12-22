<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>管理 | MyBlog</title>
	<link rel="stylesheet" href="/Blog/css/vendor/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="/Blog/css/pages/admin.css" />
</head>

<body>
	<div id="container" class="container">
		<div class="container__inner">
			<div class="header">
				<button class="btn btn-outline-primary btn-sm">
					<a href="/Blog/index.jsp">返回</a>
				</button>
			</div>
		
			<ul class="tab-list clearfix">
				<li class="tab-itom">
					<input type="radio" id="testTabRadio1" class="test-radio" name="tab" checked="checked">
					<label class="test-label" for="testTabRadio1">文章管理</label>
					<div class="tab-box">
						<c:forEach var="a" items="${articles}">
							<div class="tab-box-item clearfix">
								<div class="tab-box-item__left">
									<span class="post__title">${a.title}</span>
									<span class="post__date">${a.time}</span>
								</div>
								<div class="tab-box-item__right">
									<button class="btn btn-outline-primary btn-sm">
										<a href="/Blog/AdminDataServlet?op=edit_article&&article_id=${a.id}">编辑</a>
									</button>
									<button class="btn btn-outline-danger btn-sm" onclick="delete_article(this,'${a.id}')">删除</button>
								</div>
							</div>
						</c:forEach>
					</div>
				</li>
				<li class="tab-itom">
					<input type="radio" id="testTabRadio2" class="test-radio" name="tab">
					<label class="test-label" for="testTabRadio2">分类管理</label>
					<div class="tab-box">
						<c:forEach var="s" items="${sort}">
							<div class="tab-box-item clearfix">
								<div class="tab-box-item__left">
									<input class="clearinput" type="text" value="${s}" disabled="disabled">
								</div>
								<div class="tab-box-item__right">
									<button class="btn btn-outline-primary btn-sm" onclick="edit_sort(this,'${s}')">编辑</button>
									<button class="btn btn-outline-danger btn-sm" onclick="delet_sort(this,'${s}')">删除</button>
								</div>
							</div>
						</c:forEach>
					</div>
				</li>
				<li class="tab-itom">
					<input type="radio" id="testTabRadio3" class="test-radio" name="tab">
					<label class="test-label" for="testTabRadio3">标签管理</label>
					<div class="tab-box">
						<c:forEach var="t" items="${tags}">
							<div class="tab-box-item clearfix">
								<div class="tab-box-item__left">
									<input class="clearinput" type="text" value="${t.tag}" disabled="disabled">
								</div>
								<div class="tab-box-item__right">
									<button class="btn btn-outline-primary btn-sm" onclick="edit_tag(this,'${t.tag}')">编辑</button>
									<button class="btn btn-outline-danger btn-sm" onclick="delet_tag(this,'${t.tag}')">删除</button>
								</div>
							</div>
						</c:forEach>
					</div>
				</li>
			</ul>
		</div>
	</div>

	<script src="/Blog/js/jquery.min.js"></script>
	<script src="/Blog/js/admin.js"></script>
</body>

</html>
