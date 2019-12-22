<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>标签 | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/tags.css" type="text/css" />
</head>
<body>
	<div id="container" class="my-container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap ${sessionScope.user != null ? "" : "content-wrap--full"}">
				<div class="content">
					<div class="tagcloud">
						<div class="tagcloud-total">标签 - ${id_tag_map.size()}</div>
						<c:forEach var="map" items="${id_tag_map}">
							<div class="tagcloud-item">
								<div class="tagcloud-item__name">
									<i class="tagcloud-item__tag fa fa-tags"></i>
									${map.key}
								</div>
								<div class="tagcloud-item__list">
									<ul class="tag-list">
										<c:forEach var="list" items="${map.value}">
											<li class="tag-list-item">
												<a class="tag-list-item__link" href="./ArticleServlet?id=${list.id}">${list.title}</a>
											</li>
										</c:forEach>
										<div class="clearfix"></div>
									</ul>
								</div>
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