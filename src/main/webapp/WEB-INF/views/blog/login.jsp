<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 13220
  Date: 2019/8/3
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>日志-登录页面</title>
    <%@ include file="/WEB-INF/views/common/import.jsp"%>
    <link rel="stylesheet" href="${path}/blog/admin.css" media="all">
    <link rel="stylesheet" href="${path}/blog/login.css" media="all">
</head>
<body>


<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login">

    <form>
        <div class="layadmin-user-login-main">
            <div class="layadmin-user-login-box layadmin-user-login-header">
                <h2>layuiAdmin</h2>
                <p>layui 官方出品的单页面后台管理模板系统</p>
            </div>
            <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
                    <input type="text" name="userCode" id="LAY-user-login-username" lay-verify="required" placeholder="用户账号或者是手机号" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
                    <input type="password" name="password" id="LAY-user-login-password" lay-verify="required" placeholder="密码" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <div class="layui-row">
                        <div class="layui-col-xs7">
                            <label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="LAY-user-login-vercode"></label>
                            <input type="text" name="vercode" id="LAY-user-login-vercode" lay-verify="required" placeholder="图形验证码" class="layui-input">
                        </div>
                        <div class="layui-col-xs5">
                            <div style="margin-left: 10px;">
                                <img src="https://www.oschina.net/action/user/captcha" class="layadmin-user-login-codeimg" id="LAY-user-get-vercode">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item" style="margin-bottom: 20px;">
                    <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
                    <a href="forget.html" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">忘记密码？</a>
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
                </div>
                <div class="layui-trans layui-form-item layadmin-user-login-other">
                    <label>社交账号登入</label>
                    <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
                    <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
                    <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>

                    <a href="reg.html" class="layadmin-user-jump-change layadmin-link">注册帐号</a>
                </div>
            </div>
        </div>
    </form>

    <div class="layui-trans layadmin-user-login-footer">

        <p>© 2018 <a href="http://www.layui.com/" target="_blank">layui.com</a></p>
        <p>
            <span><a href="http://www.layui.com/admin/#get" target="_blank">获取授权</a></span>
            <span><a href="http://www.layui.com/admin/pro/" target="_blank">在线演示</a></span>
            <span><a href="http://www.layui.com/admin/" target="_blank">前往官网</a></span>
        </p>
    </div>


</div>
<%--<script src="${path}/config.js"></script>--%>
<script>

</script>
</body>
