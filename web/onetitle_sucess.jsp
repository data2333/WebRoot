<%@ page import="java.sql.Connection" %>
<%@ page import="util.GetConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<HTML>
<HEAD>
<TITLE></TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<h1 align="center">&nbsp;</h1>
<h1 align="center"><font size="4">一级标题发布结果</font></h1>
<%
  Connection con= GetConnect.getMysqlCon();
  PreparedStatement pstmt=con.prepareStatement("INSERT INTO firstandsecondtitle (FirstTitle) VALUES(?)");
  pstmt.setString(1,request.getParameter("titlename"));
  pstmt.executeUpdate();
%>
<p align="center"> <font color="#FF0000"><%=request.getParameter("titlename")%></font></p>
  <p align="center"> <font color="#FF0000">发布成功！</font></p>
  <p align="center">&nbsp;</p>
  <p align="center"><a href="onetitle.jsp"><font face="隶书" size="4">返回</font></a></p>
<p>&nbsp;</p></BODY>
</HTML>
