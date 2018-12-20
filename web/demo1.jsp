<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
    <title>ajax</title>
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <script src="${pageContext.request.contextPath}/jquery-1.4.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $(":input[name='username']").change(function () {
                var val = $(this).val();
                val = $.trim(val);

                if (val != "") {
                    var url = "${pageContext.request.contextPath}/valiateUsername";
                    var arg = {"userName": val, "time": new Date()};
                    $.post(url, arg, function (data) {
                        $("#message").html(data);
                    })
                }

            });
        })

    </script>
</head>

<body>
<form action="" method="post">
    USERNAME:<input name="username" type="text">
    <br>
    <div id="message"></div>
    <input type="submit" value="submit">
</form>

</body>
</html>
