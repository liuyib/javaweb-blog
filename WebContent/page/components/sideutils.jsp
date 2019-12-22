<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="sideutils">
		<div class="sideutils-btn sideutils-btn__adjust" badge="${article.star}" onclick="love_article(this, ${article.id})">
			<i class="fa fa-thumbs-up"></i>
		</div>
		<div class="sideutils-btn sideutils-btn__comment" badge="${article.comment}">
			<a href="#comment">
				<i class="fa fa-comment"></i>
			</a>
		</div>
	</div>
</body>
</html>