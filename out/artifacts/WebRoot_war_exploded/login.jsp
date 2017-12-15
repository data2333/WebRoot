<%@ page import="java.sql.Connection" %>
<%@ page import="util.GetConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/24
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection con= GetConnect.getMysqlCon();
    PreparedStatement pstmt=con.prepareStatement("SELECT * FROM user WHERE name=?AND password=?");
    pstmt.setString(1,request.getParameter("user_name"));
    pstmt.setString(2,request.getParameter("user_pwd"));
    ResultSet result=pstmt.executeQuery();
    if(result.next()){
        User user=new User();
        user.setUser_name(result.getString("name"));
        user.setUser_pwd(result.getString("password"));
        session.setAttribute("LOGINED_USER",user);
        List<User> loginedUsers=new ArrayList<>();
        if (application.getAttribute("LOGINED_USER") != null)
            loginedUsers = (List) application.getAttribute("LOGINED_USER");
        loginedUsers.add(user); //把新登录用户的信息存入访问者列表中
        application.setAttribute("LOGINED_USER", loginedUsers);
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
