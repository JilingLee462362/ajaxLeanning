package com.lee.javaweb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "valiateUsername" ,value = {"/valiateUsername"})
public class valiateUsernameServlet extends HttpServlet {
    private  static  final  long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入post");
        List<String> userNames = Arrays.asList("AAA","BBB","CCC");
        String userName = request.getParameter("userName");
        String result = null;
        if (userNames.contains(userName)){

            result = "<font color = 'red' > 该用户名已经被注册</font>";
        }else {

            result = "<font color = 'green' > 该用户名可以使用</font>";
        }
        response.setContentType("text/html");
        response.getWriter().print(result);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
