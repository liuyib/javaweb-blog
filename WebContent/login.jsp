<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>登录 | MyBlog</title>
    <!-- Bootstrap core CSS -->
    <link
      href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="/Blog/css/scaffolding/reset.css" />
    <link rel="stylesheet" href="/Blog/css/login.css" />
  </head>
  <body>
    <div id="root" class="root">
      <div class="header">MyBlog</div>
      <div class="main">
        <form class="form" action="/Blog/LoginServlet" method="post">
          <label for="input" class="sr-only">用户名</label>
          <input
            type="text"
            id="input"
            class="form-control form__input"
            placeholder="请输入用户名"
            name="username"
            required
          />
          <label for="inputPassword" class="sr-only">密码</label>

          <input
            type="password"
            id="inputPassword"
            class="form-control form__input"
            placeholder="请输入密码"
            name="password"
            required
          />

          <button
            id="submit"
            class="btn btn-lg btn-primary btn-block"
            type="submit"
          >
            登录
          </button>
        </form>

        <div class="login-other">
          <span>
            <span>其他登录方式：</span>
            <a class="visitor" href="/Blog/index.jsp">游客</a>
          </span>
          <span class="register">
            <a href="/Blog/register.jsp">注册账户</a>
          </span>
        </div>
      </div>
    </div>
  </body>
</html>
