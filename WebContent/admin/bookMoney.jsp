<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>提示信息</title>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script language="javascript" type="text/javascript" src=""></script>
    <script language="javascript" type="text/javascript">
        var tbook_author = "${admin.real_name}";
        var tbook_name = "${tbook.tbook_name}";

        $(document).ready(function () {
            var paramsTbook = {
                'tbook_author ': ''
            };
            var getTbook = $("#getTbook");
            paramsTbook['tbook_author'] = tbook_author;
            getTbook.bind('click', function () {
                // $("#info").attr('action','Admin_queryTbookName.action').submit();
                $.post('Admin_queryTbookName.action', paramsTbook,
                    function () {

                            if (tbook_name != '') {
                                alert('成功');
                                window.location.href="bookMoney.jsp"
                            } else {
                                window.location.href="bookMoney.jsp"
                            }
                    })
            }, 'json')
        });


    </script>
    <style type="text/css">
        BODY {
            FONT-SIZE: 12px;
            color: #000000;
            font-size: 75%;
            background-color: #ffffff;
            background-position: right bottom;
            background-repeat: no-repeat;
            overflow-y: auto;
        }

        .btnstyle {
            CURSOR: hand;
            CURSOR: pointer;
            COLOR: #000000;
            PADDING-TOP: 2px;
            PADDING-LEFT: 1px;
            PADDING-RIGHT: 2px;
            HEIGHT: 21px;
            border: #6a9de3 1px solid;
        }

        .editbody {
            font-size: 12px;
            color: #000000;
            background-color: #DFEDFF;
        }

        .edittitleleft {
            width: 8px;
            color: #000000;
            background-color: #a7a7f4;
        }

        .edittitle {
            font-size: 12px;
            color: #000000;
            background-color: #a7a7f4;
        }

        .edittitleright {
            width: 8px;
            color: #000000;
            background-color: #a7a7f4;
        }
    </style>
</head>
<body>
<h1 align="center">
    尊敬的${admin.user_typeDesc}：${admin.real_name}
    您的书籍收益如下<br>
</h1>
<table border="1" style="border-collapse: collapse;" align="center">
    <tr>
        <th width="200" height="50px" align="center">作者</th>
        <th width="200px" height="50px">书籍</th>
        <th width="200px" height="50px">收益</th>
    </tr>
    <tr align="center">
        <td width="200px" height="30px">${admin.real_name}</td>
        <td width="200px" height="30px">${tbook.tbook_name}</td>
        <td width="200px" height="30px">${tbook.tbook_money}</td>
    </tr>
</table>
<br>
<div align="center">
    <input type="button" id="getTbook" class="btnstyle" value="查看"/>&nbsp;&nbsp;
</div>


</body>
</html>