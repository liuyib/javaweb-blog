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
			<div class="content-wrap">
				<div class="content">
					<section class="post-list">
						<div class="list-group">
							<a href="#" class="list-group-item active">分类</a>

							<c:forEach var="map" items="${sort_article_map}">
								<div class="sort_name">${map.key}</div>
								<div>
									<ul class="list-group">
										<c:forEach var="list" items="${map.value}">
											<li class="list-group-item">
												<div>
													<div>
														<a href="/Blog/ArticleServlet?id=${list.id}">${list.title}</a>
													</div>
													<div>
														<span> <i class="fa fa-clock-o"></i> ${list.time}
														</span> <span> <i class="fa fa-eye"></i> ${list.visit}
														</span>
													</div>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
							</c:forEach>
						</div>
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
