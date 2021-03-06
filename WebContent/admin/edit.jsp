<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>编辑文章 | MyBlog</title>
	<link rel="stylesheet" href="/Blog/css/vendor/bootstrap.min.css">
	<link rel="stylesheet" href="./editormd/css/editormd.min.css" />
	<link rel="stylesheet" href="./css/pages/add.css" />
</head>

<body>
	<button class="btn-back btn btn-outline-primary btn-sm">
		<a class="btn-back__link cleara" href="/Blog/index.jsp">返回</a>
	</button>

	<c:if test="${sessionScope.user == null}">
		<script>
			window.location.href = "/Blog/login.jsp";
		</script>
	</c:if>

	<div class="container" id="main">
		<form action="/Blog/UpdateServlet" method="post">
			<input type="hidden" name="id" value="${edit_article.id}">

			<div class="form-item">
				<span class="form-item__label">标题</span>
				<input class="form-control form-control-sm" type="text" name="title"
							 value="${edit_article.title}">
			</div>

			<div class="row">
				<div class="col-12 col-sm">
					<div class="form-item">
						<span class="form-item__label">时间</span>
						<input class="form-control form-control-sm" type="datetime" name="time"
									 value="${edit_article.time.substring(0,19)}">
					</div>
				</div>

				<div class="col-12 col-sm">
					<div class="form-item">
						<span class="form-item__label">作者</span>
						<input class="form-control form-control-sm" type="text" name="author"  readonly
									 value="${edit_article.author}">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12 col-sm">
					<div class="form-item">
						<span class="form-item__label">分类</span>
						<span class="form-item-btns">
							<c:forEach var="s" items="${sort_count}">
								<input class="form-item-btns__item btn btn-outline-primary btn-sm" type="button"
											 value="${s.key}" onclick="sort_click(this)">
							</c:forEach>
						</span>
						<input class="form-control form-control-sm" type="text" id="sort" name="sort"
									 value="${edit_article.sort}">
					</div>
				</div>

				<div class="col-12 col-sm">
					<div class="form-item">
						<span class="form-item__label">标签</span>
						<span class="form-item-btns">
							<c:forEach var="tag" items="${all_tag}">
								<input class="form-item-btns__item btn btn-outline-success btn-sm" type="button"
											 value="${tag.tag}" onclick="tags_click(this)">
							</c:forEach>
						</span>
						<input class="form-control form-control-sm" type="text" id="tags" name="tags" >
					</div>
				</div>
			</div>

			<div id="editormd" class="editormd">
				<textarea name="content">${edit_article.content}</textarea>
			</div>

			<div class="form-item form-submit">
				<input class="btn btn-primary btn-sm" type="submit" value="提交" />
			</div>
		</form>
	</div>

	<script src="./js/jquery.min.js"></script>
	<script src="./editormd/editormd.min.js"></script>
	<script src="./js/add.js"></script>
</body>

</html>
