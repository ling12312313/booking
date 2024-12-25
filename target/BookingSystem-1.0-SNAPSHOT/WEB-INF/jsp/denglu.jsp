<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>

    <link href="<%=basePath%>css/login-style.css" rel="stylesheet" type="text/css"/>
    <title>Login</title>
    <style type="text/css">

        .dlk {
            width: 350px;
            height: 300px;
            padding: 13px;
            position: absolute;
            left: 70%;
            /*	right: 50%;*/
            top: 30%;
            /*margin-top: 50%;
        margin-right: 20%;
         */
            background-color: rgba(240, 255, 255, 0.8);
            font-family: 宋体;
            border-radius: 10px;
            text-align: center;

        }

    </style>
    <script type="text/javascript">
        var isCommitted = false;//表单是否已经提交标识，默认为false
        function dosubmit(){
            if(isCommitted==false){
                isCommitted = true;//提交表单后，将表单是否已经提交标识设置为true
                return true;//返回true让表单正常提交
            }else{
                return false;//返回false那么表单将不提交
            }
        }
        function check(){
            var telnumber = $("#telnumber").val();
            var password = $("#password").val();
            if (telnumber == "" || password == "" ) {
                $("#message").text("账号密码不能为空！");
                alert(telnumber);
                   return false;
            }

            return true;


        }

    </script>
</head>
<body>
<div id="background" style="width:100%;height:100%;top:0px;left:0px;">
    <%--    <img src="image/timg2.jpg" width="100%" height="100%" />--%>


    <div class="dlk" align="right">
        <form action="/login1" method="post">
            <table width="292" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="50" colspan="3"
                        style="font-size:24px;text-align:center;color:black ;padding-top: 10px; font-weight: 800;">
                        &nbsp;&nbsp;用户登陆
                    </td>
                </tr>

                <tr>
                    <td colspan="3" height="22">

                        <%--                            <c:if test="${smg eq 0}">--%>
                        <h3 style="color: #96080d;"><span id="message">${msg}</span></h3>
                        <%--                            </c:if>--%>
                    </td>
                </tr>

                <tr>
                    <td width="65" style="font-size:18px;color:black">用户名:</td>
                    <td colspan="2"><input id="telnumber" name="telnumber" type="text" class="dlinput"
                                           placeholder="用户/管理员" style="border-radius:5px;"/></td>
                </tr>
                <tr>
                    <td height="16" colspan="3"></td>
                </tr>
                <tr>
                    <td style="font-size:18px;color:black">密&nbsp;码:</td>
                    <td colspan="2"><input id="password" name="password" type="password" class="dlinput"
                                           style="border-radius:5px;"/></td>
                </tr>
                <tr>
                    <td height="16" colspan="3"></td>
                </tr>

                <tr>
                    <td height="16" colspan="3"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2"><input type="submit" style="border-radius:10px;" value="登 录" class="loginbtn"
                                           onclick="return check()"/></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <table width="224" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="16" colspan="3"></td>
                            </tr>
                            <tr>

                                <td height="24"><a href="#none" class="mm" style="color: #8B864E">忘记密码？</a></td>
                                <td height="24"><a href="/fangwenregister" style="color: #8B864E">立即注册</a></td>
                            </tr>

                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

</body>
</html>