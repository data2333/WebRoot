<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  model.User: Administrator
  Date: 2017/10/12
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="refresh" content="1">
</head>
<body>
<%
SimpleDateFormat format=new SimpleDateFormat("yyyy年MM月dd日 hh点mm分ss秒");
String strCurrentTime=format.format(new Date());
%>
<%=strCurrentTime%>
</body>
</html>
