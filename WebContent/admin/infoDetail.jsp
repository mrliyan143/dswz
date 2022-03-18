<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询图书章节</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
	
});

 
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">章节&gt;&gt;查询图书章节</span>
</div>
<form id="info" name="info" action="Admin_saveInfo.action" method="post">    
<input type="hidden" id="paramsInfo.info_id" name="paramsInfo.info_id" value="${info.info_id}" /> 
<table width="800" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:10px;">
  <tr> 
     <td height="24">
       <Table border="0" cellspacing="0" cellpadding="0" align="center" width="100%"> 
            <TR>
              <TD height="24" class="edittitleleft">&nbsp;</TD>
              <TD class="edittitle">详情</TD>
              <TD class="edittitleright">&nbsp;</TD>
            </TR>
        </TABLE>
     </td>
   </tr>
   <tr>
     <td height="1" bgcolor="#8f8f8f"></td>
   </tr>
   <tr>
     <td >
     <table width="100%" align="center" cellpadding="1" cellspacing="1" class="editbody">
        <tr>
          <td align="center" style="font-weight:bold;font-size:16px"> <s:property value="${info.info_title}"/> </td>
        </tr> 
        <tr>
          <td align="center" style="padding-right:5px">
          	章节字数：<s:property value="${info.info_words}"/>个&nbsp;
          	发布时间：<s:property value="${fn:substring(info.info_date,0,19)}"/> 
          </td>
        </tr> 
        <tr> 
          <td align="left" style="padding:5px;line-height:22px">${info.info_contentShow}</td>
        </tr>   
     </table>  
     </td> 
   </tr>   
   <tr>
     <td> 
       <table width="100%" align="center" cellpadding="0" cellspacing="0" class="editbody">
        <tr class="editbody">
          <td align="center" height="30"> 
           <input type="button" onclick="window.history.back();" Class="btnstyle" value="返 回"/> 
          </td>
        </tr>
      </table>
     </td> 
   </tr>
</table>
</form>
<script>        
	   
</script>
</body>
</html>