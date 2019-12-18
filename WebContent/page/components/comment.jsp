<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div id="comment" class="comment">
		<div class="comment-input">
			<form action="/Blog/NewCommentServlet?id=${article.id}" method="post">
				<input type="hidden" name="w_nickname" value="热心网友">
				<div class="comment-input-avatar">
					<img src="/Blog/img/avatar-default.svg" />
				</div>
				<div class="comment-input-area">
					<textarea name="w_content"></textarea>
				</div>
				<input class="comment-input-submit" type="submit" value="评论" onclick="onclick" />
			</form>
		</div>
	
		<c:if test="${comment != null}">
			<c:forEach var="comm" varStatus="status" items="${comment}">
				<div class="comment-item">
					<div class="comment-meta">
						<span class="comment-meta-avatar">
							<img src="/Blog/img/avatar-default.svg" />
						</span>
						<span class="comment-meta-name">${comm.nickname}</span>
						<span class="comment-meta-date">${comm.time.substring(0, 19)}</span>
					</div>
	
					<div class="comment-content">
						<pre class="comment-content__text">${comm.content}</pre>
					
						<div class="comment-content-option">
							<span class="comment-adjust" onclick="star(this,${comm.id})">
								<i class="fa fa-thumbs-up"></i>
								${comm.star}
							</span>
							<span class="comment-diss" onclick="diss(this,${comm.id})">
								<i class="fa fa-thumbs-down"></i>
								${comm.diss}
							</span>
						</div>
					</div>
					
					<c:if test="${sessionScope.user!=null}">
						<span onclick="deletecm(this,${comm.id})">删除</span>
					</c:if>
				</div>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>