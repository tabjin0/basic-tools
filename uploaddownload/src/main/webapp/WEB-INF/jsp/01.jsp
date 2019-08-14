<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP '01.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="/static/css/common.css"/>
    <script type="text/javascript" src="/static/js/jquery-1.11.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".thumbs a").click(function () {
                var largePath = $(this).attr("href");// 大图片路径
                var largeAlt = $(this).attr("title");// 标题

                // 替换大图片的src
                $("#largeImg").attr({
                    src: largePath,
                    alt: largeAlt
                });
                return false;// 阻止默认的跳转事件
            });

            $("#myfile").change(function () {
                $("#previewImg").attr("src", "file:///" + $("#myfile").val());
            });

            var la = $("#large");
            la.hide();// 隐藏

            $("#previewImg").mousemove(function (e) {
                la.css({
                    top: e.pageY,
                    left: e.pageX
                }).html('<img src = "' + this.src + '" />').show();
            }).mouseout(function () {// 鼠标移出继续隐藏
                la.hide();
            });
        });

        // //使用js实现文件上传图片的预览
        // function showPreview(obj) {
        //     var str = obj.value;// 上传图片的路径
        //     document.getElementById("previewImg").innerHTML =
        //         "<img src = '" + str + "' />";
        // }
    </script>
</head>

<body>

<img id="previewImg" src="images/preview.jpg" width="80" height="80"/>
<%--<form action="uploadServlet.do" method="post" enctype="multipart/form-data">--%>
<form action="">
    请选择图片：<input id="myfile" name="myfile" type="file" onchange="showPreview(this)"/>
<%--    <input type="submit" value="提交"/>${result}--%>
</form>
<%--下载：<a href="downloadServlet.do?filename=test1.txt">test1.txt</a> &nbsp;&nbsp; ${errorResult}--%>

<%-- 显示原图 --%>
<div id="large"></div>

<hr>
<h2>图片预览</h2>
<p><img id="largeImg" src="images/img1-lg.jpg" alt="Large Image"/></p>
<p class="thumbs">
    <a href="images/img2-lg.jpg" title="Image2"><img src="images/img2-thumb.jpg"></a>
    <a href="images/img3-lg.jpg" title="Image3"><img src="images/img3-thumb.jpg"></a>
    <a href="images/img4-lg.jpg" title="Image4"><img src="images/img4-thumb.jpg"></a>
    <a href="images/img5-lg.jpg" title="Image5"><img src="images/img5-thumb.jpg"></a>
    <a href="images/img6-lg.jpg" title="Image6"><img src="images/img6-thumb.jpg"></a>
</p>
</body>
</html>
