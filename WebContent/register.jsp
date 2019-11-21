<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>注册 | MyBlog</title>
    <!-- Bootstrap core CSS -->
    <link
      href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="/Blog/css/scaffolding/reset.css" />
    <link rel="stylesheet" href="/Blog/css/register.css" />
  </head>
  <body>
    <div id="root" class="root">
      <div class="header">MyBlog</div>
      <div class="main">
        <form class="form" action="/Blog/RegisterServlet" method="post">
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

          <label for="inputPasswordAgagin" class="sr-only">确认密码</label>
          <input
            type="password"
            id="inputPasswordAgagin"
            class="form-control form__input"
            placeholder="请再次输入密码"
            name="password"
            required
          />

          <button
            id="submit"
            class="btn btn-lg btn-primary btn-block"
            type="submit"
          >
            注册
          </button>
        </form>

        <div class="login-other">
          <span>
            <span>其他登录方式：</span>
            <a class="visitor" href="/Blog/index.jsp">游客</a>
          </span>
          <span class="login">
            <a href="/Blog/login.jsp">已有账户？登录</a>
          </span>
        </div>
      </div>
    </div>
  </body>
</html>
