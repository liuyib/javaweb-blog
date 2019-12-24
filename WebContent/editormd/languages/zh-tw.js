(function(){
    var factory = function (exports) {
        var lang = {
            name : "zh-tw",
            description : "开源在线Markdown編輯器<br/>Open source online Markdown editor.",
            tocTitle    : "目录",
            toolbar     : {
                undo             : "撤销（Ctrl+Z）",
                redo             : "重做（Ctrl+Y）",
                bold             : "粗体",
                del              : "刪除线",
                italic           : "斜体",
                quote            : "引用",
                ucwords          : "将所选的每个单词首字母转成大写",
                uppercase        : "将所选文本转成大写",
                lowercase        : "将所选文本转成小写",
                h1               : "标题1",
                h2               : "标题2",
                h3               : "标题3",
                h4               : "标题4",
                h5               : "标题5",
                h6               : "标题6",
                "list-ul"        : "无序列表",
                "list-ol"        : "有序列表",
                hr               : "横线",
                link             : "链接",
                "reference-link" : "引用连接",
                image            : "图片",
                code             : "行内代码",
                "preformatted-text" : "预格式文本 / 代码块（缩进风格）",
                "code-block"     : "代碼塊（多語言風格）",
                table            : "添加表格",
                datetime         : "日期时间",
                emoji            : "Emoji 表情",
                "html-entities"  : "HTML 字符",
                pagebreak        : "插入分页符",
                watch            : "关闭时预览",
                unwatch          : "开放时预览",
                preview          : "全窗口预览HTML（按 Shift + ESC 退出）",
                fullscreen       : "全屏（按 ESC 退出）",
                clear            : "清空",
                search           : "搜寻",
                help             : "使用帮助",
                info             : "关闭" + exports.title
            },
            buttons : {
                enter  : "确定",
                cancel : "取消",
                close  : "关闭"
            },
            dialog : {
                link   : {
                    title    : "添加连接",
                    url      : "连接地址",
                    urlTitle : "连接标题",
                    urlEmpty : "错误：请填写连接地址。"
                },
                referenceLink : {
                    title    : "添加引用连接",
                    name     : "引用名称",
                    url      : "连接地址",
                    urlId    : "连接ID",
                    urlTitle : "连接标题",
                    nameEmpty: "错误：引用连接的名称不能为空。",
                    idEmpty  : "错误：请填写引用连接的ID。",
                    urlEmpty : "错误：请填写引用连接的URL地址。"
                },
                image  : {
                    title    : "添加图片",
                    url      : "圖片地址",
                    link     : "圖片连接",
                    alt      : "圖片描述",
                    uploadButton     : "本地上传",
                    imageURLEmpty    : "错误：图片地址不能为空。",
                    uploadFileEmpty  : "错误：上传的图片不能为空！",
                    formatNotAllowed : "错误：只允许上传图片文件，允許上传的圖=图片文件格式有："
                },
                preformattedText : {
                    title             : "添加预格式文本或代码块", 
                    emptyAlert        : "错误：请填写预格式文本或代码的內容。",
                    placeholder       : "coding now...."
                },
                codeBlock : {
                    title             : "添加代码块",                 
                    selectLabel       : "代码语言言：",
                    selectDefaultText : "请选择代码语言",
                    otherLanguage     : "其他语言",
                    unselectedLanguageAlert : "错误：请选择代码所属的语言类型。",
                    codeEmptyAlert    : "错误：请填写代码內容。",
                    placeholder:      : "coding now...."
                },
                htmlEntities : {
                    title : "HTML编码字符"
                },
                help : {
                    title : "使用帮助"
                }
            }
        };
        
        exports.defaults.lang = lang;
    };
    
	// CommonJS/Node.js
	if (typeof require === "function" && typeof exports === "object" && typeof module === "object")
    { 
        module.exports = factory;
    }
	else if (typeof define === "function")  // AMD/CMD/Sea.js
    {
		if (define.amd) { // for Require.js

			define(["editormd"], function(editormd) {
                factory(editormd);
            });

		} else { // for Sea.js
			define(function(require) {
                var editormd = require("../editormd");
                factory(editormd);
            });
		}
	} 
	else
	{
        factory(window.editormd);
	}
    
})();
