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
              var url = this.href;
              var args ={"time":new Date()};
              $("#context").load(url);
              return false;
          });
  });

  </script>
  </head>

  <body>
  <a href="hello.txt"> hello ajax</a>
  <div id="context"></div>
  </body>
</html>
