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
				popAlert('error', 'µ„‘ﬁ ß∞‹', 5);
			}
		}
	});
}

function star(ctx, comm_id) {
	$.ajax({
		url : "/Blog/CMStarServlet?id=" + comm_id,
		type : "POST",
		dataType : "JSON",
		success : function(res) {
			if (res && res.msg === 'success') {
				var oldVal = parseInt($(ctx).children('span').text());
				$(ctx).children('span').text(oldVal + 1);
			} else {
				popAlert('error', '÷ß≥÷ ß∞‹', 5);
			}
		}
	});
}

function diss(ctx, comm_id) {
	$.ajax({
		url : "/Blog/CMDissServlet?id=" + comm_id,
		type : "POST",
		dataType : "JSON",
		success : function(res) {
			if (res && res.msg === 'success') {
				var oldVal = parseInt($(ctx).children('span').text());
				$(ctx).children('span').text(oldVal + 1);
			} else {
				popAlert('error', '∑¥∂‘ ß∞‹', 5);
			}
		}
	});
}

function deletecm(ctx, comm_id) {
	$.ajax({
		url : "/Blog/CMDeleServlet?id=" + comm_id,
		type : "POST",
		dataType : "JSON",
		success : function(res) {
			if (res && res.msg === 'success') {
				$(ctx).parents('.comment-item').remove();
			} else {
				popAlert('error', '…æ≥˝ ß∞‹', 5);
			}
		}
	});
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

  if ($('.stun-message').length) {
	  $('.stun-message').remove();
  }

  var $alert = $(
		'<div class="stun-message">' +
			'<div class="stun-alert stun-alert-' + status + '">' +
				'<i class="stun-alert-icon fa fa-' + icon[status] + '"></i>' +
				'<span class="stun-alert-description">' + text + '</span>' +
			'</div>' +
		'</div>'
	);

	$('body').append($alert);
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
