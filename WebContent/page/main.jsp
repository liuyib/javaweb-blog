<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>首页 | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/home.css" type="text/css" />
</head>
<body>
	<div id="container" class="my-container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap">
				<div class="content content-home">
					<section class="post-list">
						<c:forEach var="article" items="${article_list}">
							<article class="post">
								<span class="post-archives"> <a
									class="post-archives__link"
									href="/Blog/SortServlet?get=${article.sort}"> <i
										class="fa fa-folder-open-o"></i> ${article.sort}
								</a>
								</span>

								<%@ include file="./components/post-header.jsp"%>

								<div class="post-body">
									<div class="post-body-excerpt">${article.content}</div>
									<div class="post-body-more">
										<a class="post-body-more__a"
											href="/Blog/ArticleServlet?id=${article.id}"> 阅读全文 » </a>
									</div>
								</div>
							</article>
						</c:forEach>
					</section>
				</div>
			</div>

			<%@ include file="./components/sidebar.jsp"%>

			<div class="clearfix"></div>
		</div>
		</main>

		<%@ include file="./components/footer.jsp"%>
	</div>
</body>
</html>
