<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改用户信息</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin: 15px 0;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            text-align: center;
            margin-top: 20px;
        }
        .btn button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        .btn button:hover {
            background-color: #0056b3;
        }
        .alert {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 5px;
        }
        .alert-success {
            color: #155724;
            background-color: #d4edda;
            border-color: #c3e6cb;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h1>修改用户信息</h1>
    </div>

    <!-- 显示提示信息 -->
    <c:if test="${param.success eq 'true'}">
        <div class="alert alert-success">
            信息修改成功！
        </div>
    </c:if>

    <form action="/customer/updateInformation" method="get">
        <div class="form-group">
            <label for="username">用户名:</label>
            <input type="text" id="username" name="username" value="${user.name}" required>
        </div>
        <div class="form-group">
            <label for="email">邮箱:</label>
            <input type="email" id="email" name="email" value="${user.email}" required>
        </div>
        <div class="form-group">
            <label for="telnumber">电话:</label>
            <input type="text" id="telnumber" name="telnumber" value="${user.telnumber}" required>
        </div>
        <div class="form-group">
            <label for="idcard">身份证:</label>
            <input type="text" id="idcard" name="idcard" value="${user.idcard}" required>
        </div>

        <div class="btn">
            <button type="submit">保存修改</button>
        </div>
    </form>
</div>
</body>
</html>
