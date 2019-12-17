<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>时间轴 | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/sort.css" type="text/css" />
</head>
<body>
	<div id="container" class="container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap">
				<div class="content">
					<c:forEach var="axis" varStatus="status" items="${axis_list}">
						<c:choose>
							<c:when test="${axis.id==0}">
								<div class="longline_div">
									<div>${axis.year}</div>
								</div>
							</c:when>
							<c:otherwise>
								<div class="line_div">
									<div>
										<a href="/Blog/ArticleServlet?id=${axis.id}">&nbsp;&nbsp;${axis.month}-${axis.day}
											&nbsp;&nbsp;&nbsp;&nbsp;${axis.title} </a>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
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