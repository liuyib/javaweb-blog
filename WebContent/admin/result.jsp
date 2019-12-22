<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>添加结果 | MyBlog</title>
	<link rel="stylesheet" href="/Blog/css/vendor/bootstrap.min.css">
</head>

<body>
	<div class="container" id="main">
		<div class="row c_center" style="margin: 0, auto;">
			<c:choose>
				<c:when test="${article == null}">
					<h4>添加文章失败...</h4>
				</c:when>
				<c:otherwise>
					<h4>
						添加文章成功 »
						<a href="/Blog/ArticleServlet?id=${article.id}">${article.title}</a>
					</h4>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>

</html>
