<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>ajax</title>
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <script type="text/javascript">
        window.onload = function () {
            //1.获取a节点，添加onclick
            var nodes = document.getElementsByTagName("a");
            for (var i = 0; i < nodes.length; i++) {
                nodes[i].onclick = function () {
                    var request = new XMLHttpRequest();
                    var method = "GET";
                    var url = this.href;
                    request.open(method, url);
                    request.send(null);
                    request.onreadystatechange = function () {
                        //responseText返回的是你请求的url指定文件的全部文本，responseXML返回的是你请求的url指定文件的整个DOM对象。
                        if (request.readyState == 4) {
                            if (request.status == 200 || request.status == 304) {

                                var result   =    request.responseXML;
                                var name = result.getElementById("name").firstChild.nodeValue ;
                            }
                        }
                    }
                }
            }
            return false;
        }
    </script>
</head>

<body>
<a href="hello.xml">hello </a>
<a href="hello.xml">hello </a>
<a href="hello.xml">hello </a>


<div id="details"></div>
</body>
</html>
