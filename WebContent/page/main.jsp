<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>首页 | MyBlog</title>
    <link rel="stylesheet" href="/Blog/css/vendor/fontawesome4.7.0.css" />
    <link
      rel="stylesheet"
      href="/Blog/css/scaffolding/reset.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/Blog/css/scaffolding/utils.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/Blog/css/scaffolding/base.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/Blog/css/components/header.css"
      type="text/css"
    />
    <link
      rel="stylesheet"
      href="/Blog/css/components/main.css"
      type="text/css"
    />
    <link rel="stylesheet" href="/Blog/css/home.css" type="text/css" />
  </head>
  <body>
    <div id="container" class="container">
      <header id="header" class="header">
        <div class="header__inner">
          <nav class="header-nav">
            <div class="header-nav__inner">
              <div class="header-menu">
                <div class="header-menu-item">
                  <a class="header-menu-item__link" href="/Blog/index.jsp">
                    <i class="fa fa-home"></i>
                    <span>首页</span>
                  </a>
                </div>
                <div class="header-menu-item">
                  <a
                    class="header-menu-item__link"
                    href="/Blog/SortServlet?get=all"
                  >
                    <i class="fa fa-th"></i>
                    <span>分类</span>
                  </a>
                </div>
                <div class="header-menu-item">
                  <a
                    class="header-menu-item__link"
                    href="/Blog/TagsServlet?get=all"
                  >
                    <i class="fa fa-tags"></i>
                    <span>标签</span>
                  </a>
                </div>
                <div class="header-menu-item">
                  <a class="header-menu-item__link" href="/Blog/AxisServlet">
                    <i class="fa fa-line-chart"></i>
                    <span>时间轴</span>
                  </a>
                </div>
                <div class="header-menu-item">
                  <a
                    class="header-menu-item__link"
                    href="/Blog/page/about.html"
                  >
                    <i class="fa fa-user"></i>
                    <span>关于</span>
                  </a>
                </div>
              </div>
            </div>
          </nav>
          <div
            class="header-info"
            style="background: url(/Blog/img/header-bg.jpg) no-repeat center/cover;"
          >
            <div class="header-info__inner">
              <div class="header-info-title">My Blog</div>
              <div class="header-info-subtitle">This is my blog</div>
            </div>
          </div>
          <div class="header-scrolldown">
            <i class="fa fa-angle-down header-scrolldown__icon"></i>
          </div>
        </div>
      </header>

      <main id="main" class="main">
        <div class="main__inner">
          <div class="content-wrap">
            <div class="content">
              <section class="post-list">
                <c:forEach var="article" items="${article_list}">
                  <article class="post">
                    <header class="post-header">
                      <h1 class="post-header-title">
                        <a
                          class="post-header-title__a"
                          href="/Blog/ArticleServlet?id=${article.id}"
                        >
                          ${article.title}
                        </a>
                      </h1>
                      <div class="post-header-meta">
                        <span>发布时间：${article.time}</span>
                        <span>
                          文章分类：
                          <a href="/Blog/SortServlet?get=${article.sort}">
                            ${article.sort}
                          </a>
                        </span>
                        <span>阅读次数: ${article.visit}</span>
                      </div>
                    </header>

                    <div class="post-body">
                      <div class="post-body-excerpt">${article.content}</div>
                      <div class="post-body-more">
                        <a
                          class="post-body-more__a"
                          href="/Blog/ArticleServlet?id=${article.id}"
                        >
                          阅读全文
                        </a>
                      </div>
                    </div>
                  </article>
                </c:forEach>
              </section>
            </div>
          </div>
          <aside id="sidebar" class="sidebar">
            <div class="sidebar__inner">
              <div class="sidebar-author">
                <div class="sidebar-author-avatar">
                  <img
                    class="sidebar-author-avatar__img"
                    src="/Blog/img/header.jpg"
                    alt="avatar"
                  />
                </div>
                <div class="sidebar-author__motto">
                  write code and love life
                </div>
              </div>
              <div class="sidebar-social">
                <a
                  class="sidebar-social__item"
                  href="https://github.com/liuyib/"
                  target="_blank"
                  rel="noopener"
                  data-popover="Github"
                  data-popover-pos="up"
                >
                  <i class="sidebar-social__item--icon fa fa-github"></i>
                </a>
                <a
                  class="sidebar-social__item"
                  href="https://segmentfault.com/u/liuyib/"
                  target="_blank"
                  rel="noopener"
                  data-popover="思否"
                  data-popover-pos="up"
                >
                  <span class="sidebar-social__item--logo">sf</span>
                </a>
                <a
                  class="sidebar-social__item"
                  href="https://www.zhihu.com/people/liu-yibo-64-65/activities/"
                  target="_blank"
                  rel="noopener"
                  data-popover="知乎"
                  data-popover-pos="up"
                >
                  <span class="sidebar-social__item--logo">知</span>
                </a>
                <a
                  class="sidebar-social__item"
                  href="https://juejin.im/user/5ad6b350f265da2397076275/"
                  target="_blank"
                  rel="noopener"
                  data-popover="掘金"
                  data-popover-pos="up"
                >
                  <span class="sidebar-social__item--logo">掘</span>
                </a>
              </div>
              <div class="sidebar-feed">
                <span class="sidebar-feed-email">
                  <a
                    class="sidebar-feed-email__a"
                    href="http://eepurl.com/guAE6j"
                    target="_blank"
                    rel="noopener"
                  >
                    <i class="sidebar-feed-email__a--icon fa fa-envelope"></i>
                    <span>Email</span><span>订阅</span>
                  </a>
                </span>
                <span class="sidebar-feed-rss">
                  <a
                    class="sidebar-feed-rss__a"
                    href="/atom.xml"
                    target="_blank"
                    rel="noopener"
                  >
                    <i class="sidebar-feed-rss__a--icon fa fa-rss"></i>
                    <span>RSS</span><span>订阅</span>
                  </a>
                </span>
              </div>
              <div class="sidebar-state">
                <a class="sidebar-state__a posts" href="/archives/">
                  <div class="sidebar-state__a--count">${article_number}</div>
                  <div class="sidebar-state__a--name">
                    <a href="#">归档</a>
                  </div>
                </a>
                <a class="sidebar-state__a categories" href="/categories/">
                  <div class="sidebar-state__a--count">${sort_number}</div>
                  <div class="sidebar-state__a--name">
                    <a href="/Blog/SortServlet?get=all">分类</a>
                  </div>
                </a>
                <a class="sidebar-state__a tags" href="/tags/">
                  <div class="sidebar-state__a--count">${tags_number}</div>
                  <div class="sidebar-state__a--name">
                    <a href="/Blog/TagsServlet?get=all">标签</a>
                  </div>
                </a>
              </div>
              <div class="sidebar-cc">
                <a
                  href="https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh"
                  target="_blank"
                  rel="noopener"
                  data-popover="知识共享"
                  data-popover-pos="up"
                >
                  <img src="/Blog/img/cc-by-nc-sa.svg" alt="知识共享" />
                </a>
              </div>
            </div>
          </aside>
          <div class="clearfix"></div>
        </div>
      </main>

      <footer id="footer" class="footer">
        <div class="footer__inner">
          <div>
            <a href="https://github.com/Lemonreds">
              <img class="logo" src="/Blog/img/github.png" alt="github logo" />
              <span class="v-middle">GitHub</span>
            </a>
            <span>
              <span> | copyright © 2019</span>
              <a href="#">Liuyib</a>
            </span>
          </div>
          <div>
            <span>被访问了 ${visited} 次</span>
            <span>你是第 ${member} 个访问者</span>
          </div>
        </div>
      </footer>

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
              <a href="/Blog/AddServlet">
                <span>写新文章</span>
              </a>
              <a href="/Blog/AdminServlet">
                <span>管理更多</span>
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
