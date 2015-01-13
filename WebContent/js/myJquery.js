//在新窗口打开
function openWindow(link){
	another=open(link,'NewWindow');
}

//关闭当前页面
function closeWindow() {
	window.close();
}

//带提示的关闭当前页面
function custom_close() {
	if (confirm("您确定要关闭本页吗？")) {
		window.opener = null;
		window.open('', '_self');
		window.close();
	} else {
	}
}