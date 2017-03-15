<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>Free_Note登录</title>
    

    <link rel="shortcut icon" href="favicon.ico"> <link href="../asset/foreground/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../asset/foreground/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="../asset/foreground/css/animate.css" rel="stylesheet">
    <link href="../asset/foreground/css/style.css?v=4.0.0" rel="stylesheet">
    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">F</h1>

            </div>
            <h3>欢迎使用 Free_Note</h3>

            <form class="m-t" role="form" action="login" method="post">
                <div class="form-group">
                    <input name="account" type="text" class="form-control" placeholder="用户名" required="">
                </div>
                <div class="form-group">
                    <input name="password" type="password" class="form-control" placeholder="密码" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>


                <p class="text-muted text-center"> <a href="#"><small>忘记密码了？</small></a> | <a href="register.jsp">注册一个新账号</a>
                </p>

            </form>
        </div>
    </div>

    <!-- 全局js -->
    <script src="../asset/foreground/js/jquery.min.js?v=2.1.4"></script>
    <script src="../asset/foreground/js/bootstrap.min.js?v=3.3.5"></script>


</body>

</html>