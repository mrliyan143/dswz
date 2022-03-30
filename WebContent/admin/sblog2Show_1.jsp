<%--<%@ page language="java" contentType="text/html; charset=UTF-8"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <title>书评信息</title>--%>
<%--    <link href="css/main.css" rel="stylesheet" type="text/css">--%>
<%--    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>--%>
<%--    <script type="text/javascript">--%>
<%--        var tempClassName="";--%>
<%--        function tr_mouseover(obj)--%>
<%--        {--%>
<%--            tempClassName=obj.className;--%>
<%--            obj.className="list_mouseover";--%>
<%--        }--%>
<%--        function tr_mouseout(obj)--%>
<%--        {--%>
<%--            obj.className=tempClassName;--%>
<%--        }--%>
<%--        function CheckAll(obj)--%>
<%--        {--%>
<%--            var checks=document.getElementsByName("chkid");--%>
<%--            for (var i=0;i<checks.length;i++)--%>
<%--            {--%>
<%--                var e = checks[i];--%>
<%--                e.checked = obj.checked;--%>
<%--            }--%>

<%--        }--%>


<%--        function serch()--%>
<%--        {--%>
<%--            document.info.action="Admin_listSblog2s.action";--%>
<%--            document.info.submit();--%>
<%--        }--%>
<%--        function del()--%>
<%--        {--%>
<%--            var checks=document.getElementsByName("chkid");--%>
<%--            var ids="";--%>
<%--            for (var i=0;i<checks.length;i++)--%>
<%--            {--%>
<%--                var e = checks[i];--%>
<%--                if(e.checked==true)--%>
<%--                {--%>
<%--                    if(ids=="")--%>
<%--                    {--%>
<%--                        ids=ids+e.value;--%>
<%--                    }--%>
<%--                    else--%>
<%--                    {--%>
<%--                        ids=ids+","+e.value;--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--            if(ids=="")--%>
<%--            {--%>
<%--                alert("请至少选择一个要删除的选项！");--%>
<%--                return false;--%>
<%--            }--%>
<%--            if(confirm('确认删除吗!?'))--%>
<%--            {--%>
<%--                document.info.action="Admin_delSblog2s.action?ids="+ids;--%>
<%--                document.info.submit();--%>
<%--            }--%>

<%--        }--%>
<%--        function GoPage()--%>
<%--        {--%>
<%--            var pagenum=document.getElementById("goPage").value;--%>
<%--            var patten=/^\d+$/;--%>
<%--            if(!patten.exec(pagenum))--%>
<%--            {--%>
<%--                alert("页码必须为大于0的数字");--%>
<%--                return false;--%>
<%--            }--%>
<%--            document.getElementById("pageNo").value=pagenum;--%>
<%--            document.info.action="Admin_listSblog2s.action";--%>
<%--            document.info.submit();--%>
<%--        }--%>
<%--        function ChangePage(pagenum)--%>
<%--        {--%>
<%--            document.getElementById("pageNo").value=pagenum;--%>
<%--            document.info.action="Admin_listSblog2s.action";--%>
<%--            document.info.submit();--%>
<%--        }--%>
<%--    </script>--%>
<%--        <script type="text/javascript">--%>
<%--        var tbook_id = "${tbook.tbook_id}";--%>
<%--        function GoPage()--%>
<%--        {--%>
<%--            var pagenum=document.getElementById("goPage").value;--%>
<%--            var patten=/^\d+$/;--%>
<%--            if(!patten.exec(pagenum))--%>
<%--            {--%>
<%--                alert("页码必须为大于0的数字");--%>
<%--                return false;--%>
<%--            }--%>
<%--            window.location.href="page_queryTbook.action?tbook_id="+tbook_id;--%>
<%--        }--%>
<%--        function ChangePage(pagenum)--%>
<%--        {--%>
<%--            window.location.href="page_queryTbook.action?tbook_id="+tbook_id;--%>
<%--        }--%>

<%--        var user_id = "${userFront.user_id}";--%>
<%--        var user_kind = "${userFront.user_kind}";--%>
<%--        $(document).ready(function(){--%>
<%--            $("a[id^='reply']").bind("click",function(){--%>
<%--                var nick_name2 = $(this).attr("id").split("_")[1];--%>
<%--                $("#replyUser").html("回复："+nick_name2);--%>
<%--                $("#paramsSblog2\\.nick_name2").val(nick_name2);--%>
<%--            });--%>

<%--            $("#resetBtn").bind("click",function(){--%>
<%--                $("#info2")[0].reset();--%>
<%--                $("#replyUser").html("发表书评");--%>
<%--            });--%>

<%--            $("#addBtn").bind("click",function(){--%>
<%--                // if(user_id==''){--%>
<%--                //     alert('请先登录后在进行发表书评！')--%>
<%--                //     return;--%>
<%--                // }--%>
<%--                // if(user_kind!='2'){--%>
<%--                // 	 alert('只有会员才能发表书评');--%>
<%--                // 	 return;--%>
<%--                // }--%>
<%--                if($("#noticeContent").val()==''){--%>
<%--                    alert('书评内容不能为空！')--%>
<%--                    return;--%>
<%--                }--%>
<%--                if($("#random").val()==''){--%>
<%--                    alert('验证码不能为空！')--%>
<%--                    return;--%>
<%--                }--%>

<%--                var aQuery = $("#info2").serialize();--%>
<%--                $.post('page_addSblog2.action',aQuery,--%>
<%--                    function(responseObj) {--%>
<%--                        if(responseObj.success) {--%>
<%--                            alert('评论成功！');--%>
<%--                            window.location.reload();--%>
<%--                        }else  if(responseObj.err.msg){--%>
<%--                            alert('评论失败：'+responseObj.err.msg);--%>
<%--                        }else{--%>
<%--                            alert('评论失败：服务器异常！');--%>
<%--                        }--%>
<%--                    },'json');--%>
<%--            });--%>

<%--        });--%>

<%--    </script>--%>

<%--    <script language="javascript" type="text/javascript">--%>
<%--        $(document).ready(function(){--%>

<%--            //点击预定--%>
<%--            var user_id = "${userFront.user_id}";--%>
<%--            var user_kind = "${userFront.user_kind}";--%>
<%--            var num = /^\d+$/;--%>
<%--            $("#readBook").bind('click',function(){--%>
<%--                if(user_id==''){--%>
<%--                    alert('请先登录');--%>
<%--                    return;--%>
<%--                }--%>
<%--                $("#info").submit();--%>
<%--            });--%>

<%--            $("#pfBook").bind('click',function(){--%>
<%--                if(user_id==''){--%>
<%--                    alert('请先登录');--%>
<%--                    return;--%>
<%--                }--%>
<%--                if(user_kind!='2'){--%>
<%--                    alert('只有会员才能评分');--%>
<%--                    return;--%>
<%--                }--%>
<%--                var aQuery = $("#info").serialize();--%>
<%--                $.post('page_addEvaluate.action',aQuery,--%>
<%--                    function(responseObj) {--%>
<%--                        if(responseObj.success) {--%>
<%--                            alert('评分成功！');--%>
<%--                            window.location.reload();--%>
<%--                        }else  if(responseObj.err.msg){--%>
<%--                            alert('失败：'+responseObj.err.msg);--%>
<%--                        }else{--%>
<%--                            alert('失败：服务器异常！');--%>
<%--                        }--%>
<%--                    },'json');--%>
<%--            });--%>

<%--            $("#collectBook").live("click",function(){--%>
<%--                if(user_id==''){--%>
<%--                    alert('请先登录');--%>
<%--                    return;--%>
<%--                }--%>
<%--                if(user_kind!='2'){--%>
<%--                    alert('只有会员才能收藏');--%>
<%--                    return;--%>
<%--                }--%>
<%--                if($("#hbzj").css("display")=="none"){--%>
<%--                    $("#hbzj").css("top",(parseInt($(this).offset().top)+40)+"px").css("left",$(this).offset().left).show();--%>
<%--                }else{--%>
<%--                    $("#hbzj").hide();--%>
<%--                }--%>
<%--            });--%>

<%--            $("a[id^='addCollect']").bind('click',function(){--%>
<%--                var bookshelf_id = $(this).attr("id").split("_")[1];--%>
<%--                $("#bookshelf_id").val(bookshelf_id);--%>
<%--                var aQuery = $("#info").serialize();--%>
<%--                $.post('page_addCollect.action',aQuery,--%>
<%--                    function(responseObj) {--%>
<%--                        if(responseObj.success) {--%>
<%--                            alert('收藏成功！');--%>
<%--                            $("#hbzj").hide();--%>
<%--                        }else  if(responseObj.err.msg){--%>
<%--                            alert('失败：'+responseObj.err.msg);--%>
<%--                        }else{--%>
<%--                            alert('失败：服务器异常！');--%>
<%--                        }--%>
<%--                    },'json');--%>
<%--            });--%>

<%--        });--%>
<%--    </script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="pageTitle">--%>
<%--    &nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">书评管理&gt;&gt;书评回复</span>--%>
<%--</div>--%>
<%--<form name="info" id="info" action="Admin_listSblog2s.action" method="post">--%>
<%--    <input type="hidden" name="pageNo" id="pageNo" value="${paperUtil.pageNo}"/>--%>
<%--    <table width="95%" align="center" cellpadding="0" cellspacing="0">--%>
<%--        <tr><td colspan="2" height="10px">&nbsp;</td></tr>--%>
<%--        <tr>--%>
<%--            <td width="">书评列表</td>--%>
<%--&lt;%&ndash;            <td width="" align="right">&ndash;%&gt;--%>
<%--&lt;%&ndash;                图书名称：&ndash;%&gt;--%>
<%--&lt;%&ndash;                <input type="text" id="paramsSblog2.tbook_name" name="tbook_name" value="${paramsSblog2.tbook_name}" class="inputstyle"/>&nbsp;&nbsp;&ndash;%&gt;--%>
<%--&lt;%&ndash;                评论人：&ndash;%&gt;--%>
<%--&lt;%&ndash;                <input type="text" id="paramsSblog2.nick_name" name="nick_name" value="${paramsSblog2.nick_name}" class="inputstyle"/>&nbsp;&nbsp;&ndash;%&gt;--%>
<%--&lt;%&ndash;                <input type="button" value="搜索" onclick="serch();" class="btnstyle"/>&nbsp;&ndash;%&gt;--%>
<%--&lt;%&ndash;                <input type="button" value="删除" onclick="del();" class="btnstyle"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </td>&ndash;%&gt;--%>
<%--        </tr>--%>
<%--        <tr><td colspan="2" height="2px"></td></tr>--%>
<%--    </table>--%>
<%--    <table width="95%" align="center" class="table_list" cellpadding="0" cellspacing="0">--%>
<%--        <tr class="listtitle">--%>
<%--            <td width="40" align="center"><input type="checkbox" onclick="CheckAll(this);" style="vertical-align:text-bottom;" title="全选/取消全选"/></td>--%>
<%--            <td width="40" align="center">序号</td>--%>
<%--            <td width="" align="center">图书名称</td>--%>
<%--            <td width="" align="center">评论人</td>--%>
<%--            <td width="200" align="center">评论内容</td>--%>
<%--            <td width="" align="center">评论时间</td>--%>
<%--            <td width="" align="center">粉丝互动</td>--%>
<%--        </tr>--%>
<%--        <c:if test="${sblogs!=null &&  fn:length(sblogs)>0}">--%>
<%--            <c:forEach items="${sblogs}" var="sblog" varStatus="status">--%>
<%--                <tr class="list0" onmouseover="tr_mouseover(this)" onmouseout="tr_mouseout(this)">--%>
<%--                    <td width="" align="center"><input type="checkbox" name="chkid" value="${sblog.sblog_id}" style="vertical-align:text-bottom;"/></td>--%>
<%--                    <td width="" align="center">${status.index+1+paramsSblog2.start}</td>--%>
<%--                    <td width="" align="center">${sblog.tbook_name}</td>--%>
<%--                    <td width="" align="center">${sblog.nick_name}</td>--%>
<%--                    <td width="" align="center">${sblog.sblog_content}</td>--%>
<%--                    <td width="" align="center">${fn:substring(sblog.sblog_date,0,19)}</td>--%>
<%--                    <td width="" align="center">--%>
<%--                        &nbsp;<img src="images/quote.gif" vlign="middle" style="vertical-align:middle"/>--%>
<%--                        <a href="#link" id="reply_${sblog.nick_name}">回复</a>--%>
<%--                    </td>--%>
<%--                </tr>--%>


<%--            </c:forEach>--%>
<%--        </c:if>--%>
<%--        <c:if test="${sblogs==null || fn:length(sblogs)==0}">--%>
<%--            <tr>--%>
<%--                <td height="60" colspan="9" align="center"><b>&lt;不存在书评信息&gt;</b></td>--%>
<%--            </tr>--%>
<%--        </c:if>--%>

<%--    </table>--%>
<%--    <jsp:include page="page.jsp"></jsp:include>--%>
<%--</form>--%>
<%--<!-- 发布留言 -->--%>
<%--<div id="addSblogReply" style="display:block">--%>
<%--    <form name="info2" id="info2" action="page_addSblog2.action" method="post">--%>
<%--        <input type="hidden" name="user_id" id="paramsSblog2.user_id" value="${userFront.user_id}"/>--%>
<%--        <input type="hidden" name="nick_name" id="paramsSblog2.nick_name" value="${userFront.nick_name}"/>--%>
<%--        <input type="hidden" name="nick_name2" id="paramsSblog2.nick_name2" value=""/>--%>
<%--        <input type="hidden" name="sblog_pic" id="paramsSblog2.sblog_pic" value="${userFront.user_photo}"/>--%>
<%--        <input type="hidden" name="tbook_id" id="paramsSblog2.tbook_id" value="${tbook.tbook_id}"/>--%>
<%--        <table class="reply_add">--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td class="theme" align="center" colspan="2">回复评论：</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--            <tr>--%>
<%--                <td id="replyUser" align="left" colspan="2" style="padding-left:10px"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td align="center" colspan="2" style="padding-left:10px">--%>
<%--                    <textarea name="sblog_content" id="noticeContent" style="width:600px;height:100px" class="inputstyle"></textarea>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td align="center" colspan="2" style="padding-left:10px">--%>
<%--                    <img src="Random.jsp" width="50" valign="middle" style="cursor:pointer;vertical-align:middle" title="换一张" id="safecode" border="0" onClick="reloadcode()"/>--%>
<%--                    <input type="text" id="random" name="random" style="width:80px;" class="inputstyle"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                    <input type="button" id="addBtn" class="btnstyle" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                    <input type="reset" id="resetBtn" class="btnstyle" value="清空"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </form>--%>
<%--</div>--%>
<%--<a name="link"></a>--%>
<%--</div>--%>

<%--</div>--%>

<%--</body>--%>
<%--</html>--%>