<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>标签 | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/tags.css" type="text/css" />
</head>
<body>
	<div id="container" class="container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap">
				<div class="content">
					<div class="list-group">

						<a href="#" class="list-group-item active">标签</a>
						<c:forEach var="map" items="${id_tag_map}">
							<div class="tags_name">
								<span class="glyphicon glyphicon-triangle-bottom"></span>&nbsp;&nbsp;${map.key}
							</div>
							<div>
								<!-- 标签信息 -->
								<ul class="list-group">
									<c:forEach var="list" items="${map.value}">
										<li class="list-group-item">
											<div>
												<div>
													<div>
														<a href="./ArticleServlet?id=${list.id}">${list.title}</a>
													</div>
													<div class="c_right">
														<img src="./img/time.png"> ${list.time}&nbsp;&nbsp;
														<span class="visit"><img src="/Blog/img/visit.png">
															${list.visit} </span>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</c:forEach>
					</div>
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