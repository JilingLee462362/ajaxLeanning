<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>ajax</title>
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <script type="text/javascript">
        window.onload = function () {
            //1.获取a节点，添加onclick
            document.getElementsByTagName("a")[0].onclick = function () {
                //3.创建xmlHttpRequest对象
                var request = new XMLHttpRequest();
                //4.准备发送请求的数据：url
                var url = this.href + "?time" + new Date();
                var method = "GET";

                //5.调用xmlHttpRequest对象 的open方法
                request.open(method, url);

                //6.调用xmlHttpRequest对象 的send方法
                request.send(null);

                //7.为xmlHttpRequest对象添加onreadystatechange响应函数
                request.onreadystatechange = function () {
                    //8.判断响应是否完成：xmlHttpRequest对象的readyState属性为4的时候
                    if (request.readyState == 4) {
                        //9.再判断响应是否可用：XMLHttpRequest对象的status属性为200
                        if (request.status == 200 || request.status == 304) {
                            //10.打印响应结果：responseText
                            alert(request.responseText);

                        }

                    }
                }


                //2.取消a节点默认行为
                return false;

            }

        }

    </script>
</head>

<body>
<a href="hello.txt">hello </a>
</body>
</html>
