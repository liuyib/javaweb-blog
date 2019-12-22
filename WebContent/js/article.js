function love_article(ctx, article_id) {
	$.ajax({
		url : "/Blog/AriStarServlet?id=" + article_id,
		type : "POST",
		dataType : "JSON",
		success : function(res) {
			if (res && res.msg === 'success') {
				var oldVal = parseInt($(ctx).attr('badge'));
				$(ctx).attr('badge', oldVal + 1);
			} else {
				popAlert('error', '点赞失败', 5);
			}
		}
	});
}

function deletecm(component, comm_id) {
	var container = component.parentNode.parentNode;
	var url = "/Blog/CMDeleServlet?id=" + comm_id;
	// 获取ajax
	var xmlhttp = getXHR();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// 处理服务器收到的请求响应
			var res = xmlhttp.responseText;
			// 解析json对象
			var res = eval('(' + res + ')');
			// alert( res.msg );
			if (res.msg == "success") {
				// 删除评论的视图
				var p = container.parentNode;
				p.removeChild(container);
			}
		}
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();
}

/**
 * 点击了star
 */
function star(component, comm_id) {

	var url = "/Blog/CMStarServlet?id=" + comm_id;
	// 获取ajax
	var xmlhttp = getXHR();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// 处理服务器收到的请求响应
			var res = xmlhttp.responseText;
			// 解析json对象
			var res = eval('(' + res + ')');
			if (res.msg == "success") {
				// 返回 ”success“
				component.innerHTML = res.new_star;
			} else {
				alert("不要狂点呀...");
			}
		}
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();
}

/**
 * 点击了diss
 */
function diss(component, comm_id) {

	var url = "/Blog/CMDissServlet?id=" + comm_id;
	// 获取ajax
	var xmlhttp = getXHR();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// 处理服务器收到的请求响应
			var res = xmlhttp.responseText;
			// 解析json对象
			var res = eval('(' + res + ')');
			if (res.msg == "success") {
				// 返回 ”success“
				component.innerHTML = res.new_diss;
			} else {
				alert("不要狂点呀...");
			}
		}
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();
}

/**
 * "Alert" component
 * @param {String} status The Status of message. Values: success / info / warning / error.
 * @param {String} text The text to show.
 * @param {Number} delay Message stay time (unit is 's', default 5s).
 */
function popAlert(status, text, delay) {
  var icon = {
    success: 'check-circle',
    info: 'exclamation-circle',
    warning: 'exclamation-circle',
    error: 'times-circle'
  };

  if (!$('.stun-alert')[0]) {
    var $alert = $(
      '<div class="stun-message">' +
        '<div class="stun-alert stun-alert-' + status + '">' +
          '<i class="stun-alert-icon fa fa-' + icon[status] + '"></i>' +
          '<span class="stun-alert-description">' + text + '</span>' +
        '</div>' +
      '</div>'
    );

    $('body').append($alert);
  }

  $(document).ready(function () {
    $('.stun-alert')
      .velocity('stop')
      .velocity('transition.slideDownBigIn', {
        duration: 300
      })
      .velocity('reverse', {
        delay: delay * 1000 || 5000,
        duration: 260,
        complete: function () {
          $('.stun-alert').css('display', 'none');
        }
      });
  });
}
