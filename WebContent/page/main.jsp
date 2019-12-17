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
	<div id="container" class="container">
		<%@ include file="./components/header.jsp"%>

		<main id="main" class="main">
		<div class="main__inner">
			<div class="content-wrap">
				<div class="content">
					<section class="post-list">
						<c:forEach var="article" items="${article_list}">
							<article class="post">
								<span class="post-archives"> <a
									class="post-archives__link"
									href="/Blog/SortServlet?get=${article.sort}"> <i
										class="fa fa-folder-open-o"></i> ${article.sort}
								</a>
								</span>
								<header class="post-header">
									<h1 class="post-header-title">
										<a class="post-header-title__a"
											href="/Blog/ArticleServlet?id=${article.id}">
											${article.title} </a>
									</h1>
									<div class="post-header-meta">
										<span class="post-header-meta__item published"> <i
											class="fa fa-calendar"></i> 发表于 ${article.time}
										</span> <span style="margin: 0 5px;">•</span> <span
											class="post-header-meta__item visitor"> <i
											class="fa fa-eye"></i> 被 ${article.visit} 人看爆
										</span>
									</div>
								</header>

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

		<div>
			<div>
				<div>
					<!-- <div class="sort">
              <div class="list-group">
                <span class="list-group-item active">分类</span>
                <c:forEach var="entity" items="${sort_count_map}">
                  <a
                    href="/Blog/SortServlet?get=${entity.key}"
                    class="list-group-item"
                  >
                    ${entity.key}&nbsp;&nbsp;&nbsp;&nbsp; (${entity.value})
                  </article>
                </c:forEach>
              </div>
            </div>

            <div class="visit">
              <div class="list-group">
                <span class="list-group-item active">阅读排行</span>
                <c:forEach var="a" items="${visit_rank}">
                  <a
                    href="/Blog/ArticleServlet?id=${a.id}"
                    class="list-group-item"
                    >${a.title}&nbsp;&nbsp;
                    <span>(${a.visit})</span>
                  </a>
                </c:forEach>
              </div>
            </div> -->

					<!-- <div id="tag">
              <div class="list-group">
                <span class="list-group-item active">标签</span> <br />

                <c:forEach var="t" varStatus="status" items="${tag_list}">
                  <c:choose>
                    <c:when test="${status.count%2==1}">
                      <span class="label label-info">
                        <a href="/Blog/TagsServlet?get=${t.tag}">
                          &nbsp;${t.tag}&nbsp;
                        </a>
                      </span>
                    </c:when>
                    <c:otherwise>
                      <span class="label label-success"
                        ><a href="/Blog/TagsServlet?get=${t.tag}">
                          &nbsp;${t.tag}&nbsp;</a
                        ></span
                      >
                    </c:otherwise>
                  </c:choose>
                </c:forEach>
              </div>
            </div> -->

					<c:if test="${sessionScope.user!=null}">
						<a href="/Blog/AddServlet"> <span>写新文章</span>
						</a>
						<a href="/Blog/AdminServlet"> <span>管理更多</span>
						</a>
					</c:if>
				</div>

				<!-- <div class="col-md-7 " id="right_Content">
            <div class="list-group">
              <a href="#" class="list-group-item active">文章</a>
              <c:forEach var="article" items="${article_list}">
                <div class="list-group-item">
                  <h4>
                    <a href="/Blog/ArticleServlet?id=${article.id}"
                      >${article.title}</a
                    >
                  </h4>
                  <br /> <span>${article.time}&nbsp;&nbsp;|</span>
                  <a href="/Blog/SortServlet?get=${article.sort}"
                    >${article.sort}</a
                  >
                  &nbsp;&nbsp;| <span>阅读次数: ${article.visit}</span> <br />
                  <br /> <span>${article.content}</span> <br /> <br /> <br />
                  <a href="/Blog/ArticleServlet?id=${article.id}">阅读全文</a>
                  <br />
                </div>
              </c:forEach>
            </div>
          </div> -->
			</div>
		</div>

		<!-- <a href="#">
        <input class="btn btn-default" value="返回顶部" style="width: 20%;" />
      </a> -->
	</div>
</body>
</html>
