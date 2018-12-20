<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
  <head>
    <title>$Title$</title>
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
 <script src="jquery-1.4.2.js"></script>
  <script type="text/javascript">
  $(function () {
      $("a").click(
          function () {
              //只拿h2的内容
              var url = this.href;
              var args ={"time":new Date()};
              //$.post(url,args,function (data) {
              $.get(url,args,function (data) {
                  var name = $(data).find("name").text();
                 $("#context").empty().append(name);
              });
              return false;
          });
  });

  </script>
  </head>

  <body>
  <a href="hello.xml"> hello ajax</a>
  <div id="context"></div>
  </body>
</html>
