<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>注册 | MyBlog</title>
    <link rel="stylesheet" href="/Blog/css/pages/register.css" />
  </head>
  <body>
  	<div id="container" class="container">
		<div class="container__inner">
			<div class="header">
				<div class="header__title">Ant Blog</div>
			</div>
			<div class="main">
       			<form class="form" action="/Blog/RegisterServlet" method="post">
					<div class="form-item">
						<div class="el-input el-input--prefix">
							<div class="el-input__prefix">
								<i class="el-input__icon fa fa-user"></i>
							</div>
							<input class="el-input__inner" type="text" placeholder="请输入用户名" name="username" required />
						</div>
					</div>
					
					<div class="form-item">
						<div class="el-input el-input--prefix">
							<div class="el-input__prefix">
								<i class="el-input__icon fa fa-lock"></i>
							</div>
							<input class="el-input__inner" type="password" placeholder="请输入密码" name="password" required />
						</div>
					</div>

					<div class="form-item">
						<div class="el-input el-input--prefix">
							<div class="el-input__prefix">
								<i class="el-input__icon fa fa-lock"></i>
							</div>
							<input class="el-input__inner" type="password" placeholder="请再次输入密码" name="password" required />
						</div>
					</div>

					<div class="form-item form-submit">
						<button id="submit" class="el-button el-button--primary el-button--small" type="submit">注册</button>
					</div>
				</form>

				<div class="auth clearfix">
					<span class="auth-other">
						<span>其他登录方式：</span>
						<a href="/Blog/index.jsp">游客</a>
					</span>
					<span class="auth-login">
						<a href="/Blog/login.jsp">已有账户？登录</a>
					</span>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
