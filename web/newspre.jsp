<%@ page import="dao.FirstLevelTittleDbOperation" %>
<%@ page import="java.util.List" %>
<%@ page import="model.FirstLevelTitle" %>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<html>
<head>
    <title>新闻发布系统</title>
</head>
<body>
<table width="100%">
    <tr>
        <td bgcolor="#FFFFFF" height="86">
            <img src="images/head.gif" border="0" width="100%" alt="0"/>
        </td>
    </tr>
</table>
<table width="100%" bgcolor="#FFFFFF">
    <tr>
        <td width="150" valign="top" align="left" bgcolor="#9999FF">
            <table>
                <tr>
                    <td width="145" height="90" valign="top" align="left">
                        <img src="images/left.jpg" border="0" width="146" height="96" alt="0"/>
                    </td>
                </tr>
                <tr>
                    <td height="461" width="145" valign="top">
                        <div align="center">
                            <font size="4">
                                <b>
                                    <font size="3">新闻分类</font>
                                </b>
                            </font>
                        </div>
                        <p></p>

                            </a></div>
                            <br>
                                <%
FirstLevelTittleDbOperation first = new FirstLevelTittleDbOperation();
List list1 = first.getAllFirstLevelTitleList();
if (list1!=null && list1.size() != 0) {
       for (int i = 0; i < list1.size(); i++) {
	FirstLevelTitle fTitle = (FirstLevelTitle) list1.get(i);
%>
                        <div align="center"><a href="newspre.jsp?parentId=<%=fTitle.getTitleName()%>">
                                <%=fTitle.getTitleName()%>
                        <%}}%>
                    </td>
                </tr>
            </table>
        </td>
        <td valign="top" height="100%" width="859">
            <table width="100%">
                <tr>
                    <td valign="top" height="13" bgcolor="#9999FF">
                        <div align="center">welcome to the new station!</div>
                    </td>

                <tr>
                    <td valign="top" height="531" bgcolor="#FFFFFF">
                        <p>
                            <br> <br>
                        <%
                        String first_title=request.getParameter("parentId");
                        FirstLevelTittleDbOperation second = new FirstLevelTittleDbOperation();
                        List<FirstLevelTitle> list=second.getAllSecondLevelTitleList(first_title);
                        for (FirstLevelTitle title:list){%>
                            <%="<li><a href=\"newspre.html\" target=\"_blank\">"+title.getSecond_title()+"</a></li><br>"%>
                        <%}
                        %>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
