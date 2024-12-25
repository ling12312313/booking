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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/register-style.css">

    <title>register</title>
    <style type="text/css">

        .register-container {
            width: 350px;
            height: 650px;
            padding: 13px;
            position: absolute;
            left: 40%;
            /*	right: 50%;*/
            top: 5%;
            /*margin-top: 50%;
        margin-right: 20%;
         */
            background-color: rgba(240, 255, 255, 0.8);
            font-family: 宋体;
            border-radius: 10px;
            text-align: center;

        }

    </style>
    <script>
        function check() {
            var s = $(msg);
            alert(s);
        }

    </script>
</head>

<body>

<div class="register-container">
    <h1>火车订票系统</h1>

    <div class="connect">
        <h2>旅客注册</h2>
    </div>

    <form action="/register" method="post" id="registerForm">
        <div>
            <input type="text" id="name" name="name" class="realname" style="color: #000000;" placeholder="输入真实姓名"
                   autocomplete="off"/>
        </div>
        <div>
            <input type="password" id="password" name="password" class="password" style="color: #000000;"
                   placeholder="输入密码" oncontextmenu="return false" onpaste="return false"/>
        </div>
        <%--		<div>--%>
        <%--			<input type="password" id="confirm_password" name="confirm_password" class="confirm_password"style="color: #000000;" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />--%>
        <%--		</div>--%>
        <!--<div>
            <input type="text" name="realname" class="" placeholder="" autocomplete="off" />
        </div>-->
        <div>
            <input type="text" id="idcard" name="idcard" class="idnumber" style="color: #000000;" placeholder="输入二代身份证号"
                   autocomplete="off"/>
        </div>
        <div>
            <input type="text" id="telnumber" name="telnumber" class="phone_number" style="color: #000000;"
                   placeholder="输入手机号码" autocomplete="off" id="number"/>
        </div>
        <div>
            <input type="email" id="email" name="email" class="email" style="color: #000000;" placeholder="输入邮箱地址"
                   oncontextmenu="return false" onpaste="return false"/>
        </div>
        <button id="submit" type="submit" onclick="check()">注 册</button>

    </form>
    <a href="/fangwendenglu" type="submit" class="register-tis">登陆</a>

</div>

</body>
</html>
