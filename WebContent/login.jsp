<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>登录 | MyBlog</title>
    <!-- Bootstrap core CSS -->
    <link
      href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="/Blog/css/public.css" />
    <link rel="stylesheet" href="/Blog/css/login.css" />
  </head>
  <body>
    <div id="root" class="root">
      <div class="header">MyBlog</div>
      <div class="main">
        <form action="/Blog/LoginServlet" method="post">

          <label for="input" class="sr-only">username</label>
          <input
            type="text"
            id="input"
            class="form-control"
            placeholder="username"
            name="username"
            required
          />
          <label for="inputPassword" class="sr-only">password</label>

          <input
            type="password"
            id="inputPassword"
            class="form-control"
            placeholder="password"
            name="password"
            required
          />

          <button
            id="submit"
            class="btn btn-lg btn-primary btn-block"
            type="submit"
          >
            login
          </button>

          <a class="visitor" href="/Blog/index.jsp">visitor</a>
        </form>
      </div>

      <div class="footer">
        <a target="_blank" href="https://github.com/Lemonreds">
          <img
            src="/Blog/img/github.png"
            width="22px"
            height="22px"
            class="img-circle"
          />GitHub
        </a>
        by lemonreds.
      </div>
    </div>
  </body>
</html>