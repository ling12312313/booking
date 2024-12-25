<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<html>
<head>
    <title>修改密码</title>
    <style>
        /* 通用重置样式 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
            width: 100%;
            font-family: Helvetica, sans-serif;
            font-size: 14px;
            color: #333;
            background-color: #f4f4f4;
        }

        /* 表单容器 */
        .form-container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        /* 标签和输入框 */
        label {
            font-size: 14px;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="password"], input[type="text"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="password"]:focus, input[type="text"]:focus {
            outline: none;
            border-color: #7CCD7C;  /* 聚焦时改变边框颜色 */
        }

        /* 按钮样式 */
        button {
            background-color: #7CCD7C;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #4CAF50; /* 鼠标悬停时的颜色 */
        }

        /* 错误样式 */
        .error-message {
            color: red;
            font-size: 14px;
            text-align: center;
            margin-top: 20px;
        }

    </style>
</head>
<body>
<div class="form-container">
    <h2>修改密码</h2>
    <form action="/user/modifyPwd" method="post">
        <label for="currentPassword">当前密码：</label>
        <input type="password" id="currentPassword" name="currentPassword" required /><br />

        <label for="newPassword">新密码：</label>
        <input type="password" id="newPassword" name="newPassword" required /><br />

        <label for="confirmPassword">确认密码：</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required /><br />

        <label for="telNumber">手机号：</label>
        <input type="text" id="telNumber" name="telNumber" required /><br />

        <button type="submit" class="loginbtn">提交修改</button>
    </form>
</div>
</body>
</html>
