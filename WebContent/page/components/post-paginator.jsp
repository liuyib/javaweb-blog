<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<nav class="paginator">
		<div class="paginator-prev">
			<c:choose>
				<c:when test="${article_pre!=null}">
					<a class="paginator-prev__link" href="/Blog/ArticleServlet?id=${article_pre.id}">
						<i class="fa fa-chevron-left"></i>
						${article_pre.title}
					</a>
				</c:when>
				<c:otherwise>没有更早的文章了</c:otherwise>
			</c:choose>
		</div>
		<div class="paginator-next">
			<c:choose>
				<c:when test="${article_next!=null}">
					<a class="paginator-prev__link" href="/Blog/ArticleServlet?id=${article_next.id}">
						<i class="fa fa-chevron-right"></i>
						${article_next.title}
					</a>
				</c:when>
				<c:otherwise>没有更多的文章了</c:otherwise>
			</c:choose>
		</div>
	</nav>
</body>
</html>