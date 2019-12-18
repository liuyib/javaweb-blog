<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<header class="post-header">
		<h1 class="post-header-title">${article.title}</h1>
		<div class="post-header-meta">
			<span class="post-header-meta__item published">
				<i class="fa fa-calendar"></i>
				发表于 ${article.time.substring(0, 10)}
			</span>
			<span style="margin: 0 5px;">•</span>
			<span class="post-header-meta__item sort">
				<i class="fa fa-folder-open"></i>
				<a href="/Blog/SortServlet?get=${article.sort}">${article.sort}</a>
			</span>
			<span style="margin: 0 5px;">•</span>
			<span class="post-header-meta__item author">
				<i class="fa fa-user"></i>
				${article.author}
			</span>
			<span style="margin: 0 5px;">•</span>
			<span class="post-header-meta__item visitor">
				<i class="fa fa-eye"></i>
				被 ${article.visit} 人看爆
			</span>
		</div>
	</header>
</body>
</html>