<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="util.GetConnect" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<HTML>
<HEAD>
    <TITLE></TITLE>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<h1 align="center">&nbsp;</h1>
<h1 align="center"><font size="4">二级标题发布结果</font></h1>

<p align="center"><font color="#FF0000">发布成功！</font></p>
<p align="center">&nbsp;</p>
<p align="center"><a href="title_file.jsp"><font face="隶书" size="4">返回</font></a></p>
<%
    Connection con = GetConnect.getMysqlCon();
    PreparedStatement pstmt = con.prepareStatement("INSERT INTO firstandsecondtitle (FirstTitle,SecondTittle) VALUES(?,?)");
    pstmt.setString(1, request.getParameter("parenttitle"));
    pstmt.setString(2, request.getParameter("titlename"));
    pstmt.executeUpdate();
%>
<p>&nbsp;</p></BODY>
</HTML>
