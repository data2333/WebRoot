<%@ page import="model.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<title>新闻发布系统</title>
</head>
<%
  User user=(User)session.getAttribute("LOGINED_USER");
  if(user==null)
      response.sendRedirect("login2.jsp");
%>

<FRAMESET rows="20%,80%" cols="*"    >
  <FRAME src="top.jsp" name="topFrame" scrolling="NO"    marginwidth="0" marginheight="0">
  <FRAMESET rows="*" cols="25%,75%"  >
    <FRAME src="left.jsp" name="leftFrame" scrolling="yes"   marginwidth="0" marginheight="0">
    <FRAME src="welcome.jsp" name="mainFrame" scrolling="yes"   marginwidth="0" marginheight="0">
  </FRAMESET>
</FRAMESET>
<noframes></noframes>


</html>
