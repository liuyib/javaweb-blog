<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${article.title}|MyBlog</title>
<link rel="stylesheet" href="/Blog/css/pages/article.css"
	type="text/css" />
<script src="./js/article.js"></script>
</head>

<body>
	<div id="container" class="container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap">
				<div class="content">
					<div id="a_content">
						<jsp:include page="/page/show.jsp" />
					</div>

					<div id="article">
						<div id="a_head ">
							<h3>${article.title}</h3>
							<div>
								<h5>
									<span>${article.time}</span> <a
										href="/Blog/SortServlet?get=${article.sort}">${article.sort}</a>
									<span>${article.author}</span>
								</h5>
							</div>
							<div class="r_div">
								<h5>
									<span>${article.visit}</span> <span>${article.star}</span> <span>${article.comment}</span>
								</h5>
							</div>
							<div id="tag">
								<c:forEach var="t" items="${article_tags}">
									<a href="/Blog/TagsServlet?get=${t.tag}">${t.tag}</a>
								</c:forEach>
							</div>
						</div>
					</div>

					<div>
						<div class="f_div">
							<span></span>
							<c:choose>
								<c:when test="${article_pre!=null}">
									<a href="/Blog/ArticleServlet?id=${article_pre.id}">上一篇:${article_pre.title}</a>
								</c:when>
								<c:otherwise>没有更早的文章了</c:otherwise>
							</c:choose>
						</div>
						<div class="r_div">
							<c:choose>
								<c:when test="${article_next!=null}">
									<a href="/Blog/ArticleServlet?id=${article_next.id}">下一篇:${article_next.title}</a>
								</c:when>
								<c:otherwise>没有更多的文章了</c:otherwise>
							</c:choose>
							<span class="glyphicon glyphicon-chevron-right"></span>
						</div>

						<div>
							<span onclick="love_article(${article.id})">点赞</span>
						</div>
					</div>

					<div class="comment">
						<div class="r_div">
							<a href="#comment"><span>写评论....</span></a>
						</div>

						<c:if test="${comment!=null}">
							<c:forEach var="comm" varStatus="status" items="${comment}">
								<div class="row">
									<div class="f_div">
										<img src="/Blog/img/comment.jpg" height="50" width="50" /> <span>
											${comm.nickname}</span> <span>${comm.time}</span>
									</div>
									<div id="c_content" class="c_left">
										<pre>${comm.content }</pre>
									</div>
									<div class="r_div">
										<a> <span onclick="star(this,${comm.id})">${comm.star}</span>
										</a> <a> <span onclick="diss(this,${comm.id})">${comm.diss}</span>
										</a>
										<c:if test="${sessionScope.user!=null}">
											<span onclick="deletecm(this,${comm.id})">删除</span>
										</c:if>
									</div>
								</div>
							</c:forEach>
						</c:if>

						<form action="/Blog/NewCommentServlet?id=${article.id}"
							method="post">
							<input type="text" name="w_nickname" value="热心网友"> <br />
							<textarea name="w_content"></textarea>
							<input type="submit" value="评论" onclick="onclick" /> <br />
						</form>
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
