<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>图书章节内容</title>
<meta http-equiv="X-UA-Compatible" content="IE=8"/>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/info.css">
<link rel="stylesheet" type="text/css" href="css/message.css">
<script language="javascript" type="text/javascript" src=""></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script language="javascript" type="text/javascript">

		var user_name="${userFront.user_name}";
		var user_pass="${userFront.user_pass}";
		var user_id="${userFront.user_id}";
		var buy_book="${userFront.buy_book}";

		$(document).ready(function () {
			var postStr = {
				'user_name':'',
				'user_id':'',
				'user_pass':''
			};
			var buybook = $("#buybook");
			// var user_name = $("#user_name");
			// var user_pass = $("#user_pass");
			// var user_id = $("#user_id");
			postStr['user_name'] = user_name;
			postStr['user_pass'] = user_pass;
			postStr['user_id'] = user_id;
			buybook.bind('click', function () {
				$.post('BuyBookSystem.action', postStr,
						function (responseObj) {
							if (responseObj.success) {
									alert('购买成功');
								window.location.href="page_queryInfo.action?info_id=${info.next_id}";
							} else if (responseObj.err.msg) {
								alert('购买失败：'+responseObj.err.msg);
							}
						})
				// window.location.href="page_index.action";
			}, 'json');
		});
	</script>

<style type="text/css">
 body,td,div
 {
   font-size:12px;
 }
 #list .title{
	line-height:50px;
	width:100%;
	margin-left:10px;
	color:#A88D5A;
	font-size:16px;
	font-weight:bold;
	overflow:hidden;
}

#list .typehr{
    height:5px;
	width:100%;
	margin-left:10px;
	background:url('images/yun_hr.gif') repeat-x left center; 
	overflow:hidden;
}
</style>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<div id="middle">
	<div id="list">
<%--		 <div class="nav">当前位置: 主页 > 【${tbook.tbook_name}】-章节详情 >  </div>--%>
<%--		 <div class="article_title">${info.info_title}</div>--%>
<%--		 <div class="article_time">发布时间：${fn:substring(info.info_date,0,19)}　章节字数：${info.info_words}个　</div>--%>
<%--		 <div class="article_con">${info.info_contentShow}</div>--%>
	<div class="nav">当前位置: 主页 > 【${tbook.tbook_name}】-章节详情 ></div>
	<div class="article_title">${info.info_title}</div>
	<div class="article_time">发布时间：${fn:substring(info.info_date,0,19)}　章节字数：${info.info_words}个</div>
	<div class="article_time"><a style="text-decoration:underline;"
								 href="page_queryInfo.action?info_id=${info.pre_id}">${info.pre_id!=0?'上一章':''}</a>
		　<a style="text-decoration:underline;"
			href="page_queryInfo.action?info_id=${info.next_id}">${info.next_id!=0?'下一章':''}</a></div>


	<c:if test="${info.info_id>8&&info.info_id<12}">
		<div class="article_con">${info.info_contentShow}</div>
	</c:if>
	<c:if test="${info.info_id>11&&userFront.buy_book==0}">
		<h1 align="center">此为收费章节，需要购买</h1>
		<div align="center">
				<%--                用户名：<input type="text" id="user_name" class="inputstyle" name="user_name"  style="width:100px"/>--%>
				<%--                <br/>密　码：<input type="password" id="user_pass" class="inputstyle" name="user_pass"  style="width:100px"/>--%>
				<%--                <br/>　　　--%>
			<input type="button" id="buybook" class="btnstyle" value="购买"/>
		</div>

	</c:if>
	<c:if test="${userFront.buy_book==1}">
		<div class="article_con">${info.info_contentShow}</div>
	</c:if>
	<div class="article_time"><a style="text-decoration:underline;"
								 href="page_queryInfo.action?info_id=${info.pre_id}">${info.pre_id!=0?'上一章':''}</a>
		　<a style="text-decoration:underline;"
			href="page_queryInfo.action?info_id=${info.next_id}">${info.next_id!=0?'下一章':''}</a></div>
	</div>
	</div>
	<div id="Picture"></div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
 
</body>
</html>