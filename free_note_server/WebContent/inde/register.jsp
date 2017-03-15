<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>Free 注册</title>
   
    <link rel="shortcut icon" href="favicon.ico"> <link href="../asset/foreground/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../asset/foreground/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../asset/foreground/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="../asset/foreground/css/animate.css" rel="stylesheet">
    <link href="../asset/foreground/css/style.css?v=4.0.0" rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">F</h1>

            </div>
            <h3>欢迎注册Free账号</h3>
            <p>创建Free通行证</p>
            <form class="m-t" role="form" action="register" method="post">
                <div class="form-group">
                    <input name="account" type="text" class="form-control" placeholder="请输入用户名" required="">
                </div>
                <div class="form-group">
                    <input name="password" type="password" class="form-control" placeholder="请输入密码" required="">
                </div>
                <div class="form-group">
                    <input  type="password" class="form-control" placeholder="请再次输入密码" required="">
                </div>
                <div class="form-group">
                    <input name="email" type="text" class="form-control" placeholder="请输入邮箱" required="">
                </div>
                <div class="form-group text-left">
                    <div class="checkbox i-checks">
                        <label class="no-padding">
                            <input type="checkbox"><i></i> 我同意注册协议</label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">注 册</button>

                <p class="text-muted text-center"><small>已经有账户了？</small><a href="login.jsp">点此登录</a>
                </p>

            </form>
        </div>
    </div>

    <!-- 全局js -->
    <script src="../asset/foreground/js/jquery.min.js?v=2.1.4"></script>
    <script src="../asset/foreground/js/bootstrap.min.js?v=3.3.5"></script>
    <!-- iCheck -->
    <script src="../asset/foreground/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>


</body>

</html>