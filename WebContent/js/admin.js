function getXHR() {
	var xmlhttp;

	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	return xmlhttp;
}

function sendURL(url) {
	var xmlhttp = getXHR();
	xmlhttp.onreadystatechange = function() {
		// if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		// //这里可以写 服务器返回解结果后的处理
		// }
	};
	xmlhttp.open("POST", url, true);
	xmlhttp.send();
}

function edit_sort(ctx, sort) {
	var temp_t; // 保存input的上一个值
	var $input = $(ctx).parent().siblings().children('input');

	if ($(ctx).text() == "edit") {
		temp_t = $input.val();
		$input.removeAttr("disabled");
		$input.focus();
		$(ctx).html('save');
	} else {
		// 点击了保存
		$(ctx).html('edit');
		$input.attr("disabled", "disabled");

		// 提交修改请求
		var url = "/Blog/AdminDataServlet?op=sort_update" + "&&old_sort=" + temp_t + "&&new_sort=" + $input.value;
		sendURL(url);
	}
}

function edit_tag(ctx, tag) {
	var temp_t; // 保存input的上一个值
	var $input = $(ctx).parent().siblings().children('input');

	if ($(ctx).text() == "edit") {
		temp_t = $input.val();
		$input.removeAttr("disabled");
		$input.focus();
		$(ctx).html('save');
	} else {
		// 点击了保存
		$(ctx).html('edit');
		$input.attr("disabled", "disabled");

		// 提交修改请求
		var url = "/Blog/AdminDataServlet?op=tag_update" + "&&old_tag=" + temp_t + "&&new_tag=" + $input.val();
		sendURL(url);
	}
}

function delete_article(ctx, article_id) {
	$(ctx).parents(".tab-box-item").remove();

	// 后台删除
	var url = "/Blog/AdminDataServlet?op=delete_article" + "&&article_id=" + article_id;
	sendURL(url);
}

function delet_sort(ctx, sort) {
	$(ctx).parents(".tab-box-item").remove();

	// 后台删除
	var url = "/Blog/AdminDataServlet?op=sort_delete" + "&&sort=" + sort;
	sendURL(url);
}

function delet_tag(ctx, tag) {
	$(ctx).parents(".tab-box-item").remove();

	// 后台删除
	var url = "/Blog/AdminDataServlet?op=tag_delete" + "&&tag=" + tag;
	sendURL(url);
}
