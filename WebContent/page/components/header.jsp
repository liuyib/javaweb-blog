<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<header id="header" class="header">
		<div class="header__inner">
			<nav class="header-nav">
				<div class="header-nav__inner">
					<div class="header-menu">
						<div class="header-menu-item">
							<a class="header-menu-item__link" href="/Blog/page/main.jsp"> <i
								class="fa fa-home"></i> <span>首页</span>
							</a>
						</div>
						<div class="header-menu-item">
							<a class="header-menu-item__link"
								href="/Blog/SortServlet?get=all"> <i class="fa fa-th"></i> <span>分类</span>
							</a>
						</div>
						<div class="header-menu-item">
							<a class="header-menu-item__link"
								href="/Blog/TagsServlet?get=all"> <i class="fa fa-tags"></i>
								<span>标签</span>
							</a>
						</div>
						<div class="header-menu-item">
							<a class="header-menu-item__link" href="/Blog/AxisServlet"> <i
								class="fa fa-line-chart"></i> <span>时间轴</span>
							</a>
						</div>
						<div class="header-menu-item">
							<a class="header-menu-item__link" href="/Blog/page/about.jsp">
								<i class="fa fa-user"></i> <span>关于</span>
							</a>
						</div>
					</div>

					<div class="header-user">
						<c:if test="${sessionScope.user != null}">
							已登录
						</c:if>
						<c:if test="${sessionScope.user == null}">
							<a class="cleara" href="/Blog/index.jsp">登录/注册</a>
						</c:if>
					</div>

					<div class="header-writting">
						<i class="fa fa-paint-brush"></i>
						<a class="cleara" href="/Blog/NewArticleServlet">写博客</a>
					</div>
				</div>
			</nav>

			<div class="header-info"
				style="background: url(/Blog/img/header-bg.jpg) no-repeat center/cover;">
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
</body>
</html>