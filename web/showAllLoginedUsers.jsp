<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/24
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%  List loginedUsers = new ArrayList();  //访问者列表
    if (application.getAttribute("LOGINED_USER") != null)
        loginedUsers = (List) application.getAttribute("LOGINED_USER"); %>
目前,有<%=loginedUsers.size()%>人已经访问过本网站!<br><br>
访问者的登录名称分别是：<br>
<%    for (int i = 0; i < loginedUsers.size(); i++) {
    User logineduser = (User) loginedUsers.get(i);
    out.print(logineduser.getUser_name());
    out.print("<br/>");
}   %>

</body>
</html>
