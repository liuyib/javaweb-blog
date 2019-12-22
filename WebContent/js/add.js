document.addEventListener("DOMContentLoaded", function() {
  var editor = editormd("editormd", {
    width: "100%",
    height: 720,
    path: "./editormd/lib/",
    codeFold: true,
    searchReplace: true,
    saveHTMLToTextarea: true, // 保存 HTML 到 Textarea
    htmlDecode: "style,script,iframe|on*", // 开启 HTML 标签解析，为了安全性，默认不开启
    emoji: true,
    taskList: true,
    tocm: true,
    tex: true,
    flowChart: true,
    sequenceDiagram: true,
    imageUpload: true,
    imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
    imageUploadURL: "/Blog/UploadPic",
    //后台只需要返回一个 JSON 数据
    onload: function() {
      //console.log("onload =>", this, this.id, this.settings);
    }
  });
});

function sort_click(btn) {
  var value = btn.value;
  var sort = document.getElementById("sort");

  sort.value = value;
}

function tags_click(btn) {
  var value = btn.value;
  var tags = document.getElementById("tags");
  var tags_value = tags.value;

  if (tags_value.indexOf(value) > -1) return;

  tags.value = tags_value + " " + value;
}
