<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>关于分类 | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/about.css" type="text/css" />
</head>

<body>
	<div id="container" class="my-container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap ${sessionScope.user != null ? "" : "content-wrap--center"}">
				<div class="content">
					关于我们
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
