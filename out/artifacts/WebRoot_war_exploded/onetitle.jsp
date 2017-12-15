<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>

<HTML>
<HEAD>
<TITLE>发布一级标题</TITLE>
<script language="JavaScript" type="">
function checkOneTitle(){
   if(form1.titlename.value ==null || form1.titlename.value==""){
      alert("请输入一级标题!");
      return false;
   }else{
     return true;
   }
}
</script>
</HEAD>
<BODY BGCOLOR="#FFFFFF">
<h1 align="center">&nbsp;</h1>
<h1 align="center"><font size="4">一级标题发布</font></h1>
<h1 align="center">&nbsp;</h1>

<form name="form1" method="post"
	action="onetitle_sucess.jsp">

<table width="100%" border="0" cellspacing="1" cellpadding="0">
	<tr>
		<td width="42%" height="29">
		<div align="right">标题名：</div>
		</td>
		<td width="17%" valign="middle" align="right" height="29">
		<div align="left">
			<input type="text" name="titlename" size="20" value=""></div>
		</td>
		<td width="41%" valign="middle" align="right" height="29">&nbsp;</td>
	</tr>
	<tr>
		<td width="42%">&nbsp;</td>
		<td width="17%" align="right">
		<div align="center">
			<input type="submit" name="Submit2"
			value="确定" onClick="return checkOneTitle()">
			<input type="reset" name="Reset" value="重置">
		</div>
		</td>
		<td width="41%" align="right">&nbsp;</td>
	</tr>
</table>
	<%session.setAttribute("fuck",request.getAttribute("titlename"));%>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><font face="隶书" size="4">注意：发布前请认真检查输入的标题是否正确</font><font
	face="隶书">。</font></p>
</form>

<p>&nbsp;</p>
</BODY>


</HTML>
