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
							<a class="header-menu-item__link" href="/Blog/index.jsp"> <i
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
							<details class="dropdown">
								<summary class="dropdown-summary">
									<img src="/Blog/img/avatar-default.svg" />
								</summary>
								<div class="dropdown-menu">
									<a class="dropdown-item cleara" href="/Blog/AdminServlet">
										<i class="fa fa-user-o"></i>
										管理更多
									</a>
									<div class="dropdown-item">
										<i class="fa fa-sign-out"></i>
										退出登录
									</div>
								</div>
							</details>
						</c:if>
						<c:if test="${sessionScope.user == null}">
							<a class="cleara" href="/Blog/index.jsp">登录/注册</a>
						</c:if>
					</div>

					<c:if test="${sessionScope.user != null}">
						<div class="header-writting">
							<i class="fa fa-paint-brush"></i>
							<a class="cleara" href="/Blog/AddServlet">写博客</a>
							
						</div>
					</c:if>
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