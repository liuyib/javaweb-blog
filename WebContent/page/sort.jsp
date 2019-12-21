<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>分类 | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/sort.css" type="text/css" />
</head>

<body>
	<div id="container" class="container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap ${sessionScope.user != null ? "" : "content-wrap--full"}">
				<div class="content">
					<div class="category">
						<div class="category-total">分类 - ${sort_article_map.size()}</div>
						<c:forEach var="map" items="${sort_article_map}">
							<div class="category-item">
								<div class="category-item__name">
									<i class="category-item__tag fa fa-folder-open"></i>
									${map.key}
								</div>
								<ul class="category-list">
									<c:forEach var="list" items="${map.value}">
										<li class="category-list-item">
											<a class="category-list-item__link" href="/Blog/ArticleServlet?id=${list.id}">${list.title}</a>
										</li>
									</c:forEach>
									<div class="clearfix"></div>
								</ul>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

			<c:if test="${sessionScope.user != null}">
				<%@ include file="./components/sidebar.jsp"%>
			</c:if>

			<div class="clearfix"></div>
		</div>
		</main>


		<%@ include file="./components/footer.jsp"%>
	</div>
</body>
</html>
