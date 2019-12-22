<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${article.title} | MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/article.css" type="text/css" />
<script src="./js/article.js"></script>

<script src="./js/jquery.min.js"></script>
<script src="./editormd/editormd.min.js"></script>
<script src="./editormd/lib/marked.min.js"></script>
<script src="./editormd/lib/prettify.min.js"></script>
<script src="./editormd/lib/raphael.min.js"></script>
<script src="./editormd/lib/underscore.min.js"></script>
<script src="./editormd/lib/sequence-diagram.min.js"></script>
<script src="./editormd/lib/flowchart.min.js"></script>
<script src="./editormd/lib/jquery.flowchart.min.js"></script>
</head>

<body>
	<div id="container" class="my-container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<%@ include file="./components/sideutils.jsp"%>

			<div class="content-wrap content-wrap-post ${sessionScope.user != null ? "" : "content-wrap--full"}">
				<div class="content">
					<%@ include file="./components/post-header.jsp"%>

					<div id="postContent" class="post-content">
						<textarea>${article.content}</textarea>
					</div>

					<div class="post-tag">
						<div class="post-tag-info">关注下面这些标签，发现更多相似文章~</div>
						<c:forEach var="t" items="${article_tags}">
							<i class="post-tag__icon fa fa-tags"></i>
							<a class="post-tag-item" href="/Blog/TagsServlet?get=${t.tag}">${t.tag}</a>
						</c:forEach>
					</div>

					<%@ include file="./components/post-paginator.jsp"%>
				</div>

				<%@ include file="./components/comment.jsp"%>
			</div>

			<c:if test="${sessionScope.user != null}">
				<%@ include file="./components/sidebar.jsp"%>
			</c:if>

			<div class="clearfix"></div>
		</div>
		</main>

		<%@ include file="./components/footer.jsp"%>
	</div>

	<script type="text/javascript">
		$(function mdToHtml() {
			editormd.markdownToHTML("postContent", {
				htmlDecode : "style,script,iframe",
				emoji : true,
				taskList : true,
				tex : true, // 默认不解析
				flowChart : true, // 默认不解析
				sequenceDiagram : true, // 默认不解析			
			});
		});
	</script>
</body>
</html>
