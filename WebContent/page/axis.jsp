<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>时间轴 | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/axis.css" type="text/css" />
</head>
<body>
	<div id="container" class="my-container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap ${sessionScope.user != null ? "" : "content-wrap--full"}">
				<div class="content">
					<div class="archive">
						<div class="archive-total">目前共 ${axis_list.size() - 1} 篇文章，继续加油！</div>
						<section class="post-timeline">
							<c:forEach var="axis" varStatus="status" items="${axis_list}">
								<c:choose>
									<c:when test="${axis.id==0}">
										<time class="post-timeline-item year">${axis.year}</time>
									</c:when>
									<c:otherwise>
										<article class="post-timeline-item">
											<time class="post-timeline-item__time">${axis.month}-${axis.day}</time>
											<h2 class="post-timeline-item-title">
												<a class="post-timeline-item-title__link" href="/Blog/ArticleServlet?id=${axis.id}">${axis.title}</a>
											</h2>
										</article>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</section>
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