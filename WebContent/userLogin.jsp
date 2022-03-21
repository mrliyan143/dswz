<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
    <title>用户登录</title>
	<style type="text/css">
		#infoField,#loginField{
			line-height:55px;
		}
		#middle_login{
		position: absolute;
			top: 150px;
			bottom: 0;
			left: 0;
			right: 0;
			margin: auto;
		}

	</style>
</head>

<div>
	<div id="middle_login">
		<div class="titleBg">用户登录</div>
		<div class="login_con">
			<div id="infoField"  <c:if test="${userFront==null}">style="display:none;"</c:if>>
				${userFront.nick_name}，欢迎您登录！
				<br/><input type="button" id="loginOutBtn" class="btnstyle" value="退出"/>&nbsp;&nbsp;
				<input type="button" id="selfCenterBtn" class="btnstyle" value="个人中心"/>
					<input type="button" id="loginDefault" class="btnstyle" value="首页"/>
			</div>
			<div id="loginField" <c:if test="${userFront!=null}">style="display:none;"</c:if>>
				用户名：<input type="text" id="user_name" class="inputstyle" name="user_name"  style="width:100px"/>
				<br/>密　码：<input type="password" id="user_pass" class="inputstyle" name="user_pass"  style="width:100px"/>
				<br/>　　　<input type="button" id="loginInBtn" class="btnstyle" value="登录" />&nbsp;&nbsp;
				<input type="button" id="regBtn" class="btnstyle" value="注册" />
			</div>
			<div id="login_01">
            <li><a href='/admin/login.jsp'>后台登录</a></li>
        </div>
		</div>
	</div>
</div>

</body>
</html>