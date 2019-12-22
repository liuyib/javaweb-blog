<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<aside id="sidebar" class="sidebar">
		<div class="sidebar__inner">
			<div class="sidebar-author">
				<div class="sidebar-author-avatar">
					<img class="sidebar-author-avatar__img" src="/Blog/img/header.jpg"
						alt="avatar" />
				</div>
				<div class="sidebar-author__motto">write code and love life</div>
			</div>
			
			<div class="sidebar-toplist">
				<details>
					<summary class="sidebar-toplist__title">看爆 TOP10</summary>
					
					<div class="sidebar-toplist__content">
						<c:forEach var="a" items="${visit_rank}">
		                  <a class="sidebar-toplist-item clearfix" href="/Blog/ArticleServlet?id=${a.id}">
		                  	<span class="sidebar-toplist-item__title">${a.title}</span>
		                  	<span class="sidebar-toplist-item__visit">${a.visit} 次看爆</span>
		                  </a>
		                </c:forEach>
					</div>
				</details>
			</div>
			
			<div class="sidebar-social">
				<a class="sidebar-social__item" href="https://github.com/liuyib/"
					target="_blank" rel="noopener" data-popover="Github"
					data-popover-pos="up"> <i
					class="sidebar-social__item--icon fa fa-github"></i>
				</a> <a class="sidebar-social__item"
					href="https://segmentfault.com/u/liuyib/" target="_blank"
					rel="noopener" data-popover="思否" data-popover-pos="up"> <span
					class="sidebar-social__item--logo">sf</span>
				</a> <a class="sidebar-social__item"
					href="https://www.zhihu.com/people/liu-yibo-64-65/activities/"
					target="_blank" rel="noopener" data-popover="知乎"
					data-popover-pos="up"> <span class="sidebar-social__item--logo">知</span>
				</a> <a class="sidebar-social__item"
					href="https://juejin.im/user/5ad6b350f265da2397076275/"
					target="_blank" rel="noopener" data-popover="掘金"
					data-popover-pos="up"> <span class="sidebar-social__item--logo">掘</span>
				</a>
			</div>
			<div class="sidebar-feed">
				<span class="sidebar-feed-email"> <a
					class="sidebar-feed-email__a" href="http://eepurl.com/guAE6j"
					target="_blank" rel="noopener"> <i
						class="sidebar-feed-email__a--icon fa fa-envelope"></i> <span>Email</span><span>订阅</span>
				</a>
				</span> <span class="sidebar-feed-rss"> <a
					class="sidebar-feed-rss__a" href="/atom.xml" target="_blank"
					rel="noopener"> <i class="sidebar-feed-rss__a--icon fa fa-rss"></i>
						<span>RSS</span><span>订阅</span>
				</a>
				</span>
			</div>
			<div class="sidebar-state">
				<a class="sidebar-state__a posts" href="#"> <span
					class="sidebar-state__a--name">归档</span> <span
					class="sidebar-state__a--count">${article_number}</span>
				</a> <a class="sidebar-state__a categories"
					href="/Blog/SortServlet?get=all"> <span
					class="sidebar-state__a--name">分类</span> <span
					class="sidebar-state__a--count">${sort_number}</span>
				</a> <a class="sidebar-state__a tags" href="/Blog/TagsServlet?get=all">
					<span class="sidebar-state__a--name">标签</span> <span
					class="sidebar-state__a--count">${tags_number}</span>
				</a>
			</div>
			<div class="sidebar-cc">
				<a href="https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh"
					target="_blank" rel="noopener" data-popover="知识共享"
					data-popover-pos="up"> <img src="/Blog/img/cc-by-nc-sa.svg"
					alt="知识共享" />
				</a>
			</div>
		</div>
	</aside>
</body>
</html>