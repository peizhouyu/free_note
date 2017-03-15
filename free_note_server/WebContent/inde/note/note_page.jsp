<%@page import="cn.free.bean.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	Note onenote;
	onenote = (Note)request.getAttribute("onenote");
	request.setAttribute("onenote", null);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>笔记内容</title>
   
    <link rel="shortcut icon" href="favicon.ico"> <link href="../asset/foreground/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../asset/foreground/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="../asset/foreground/css/animate.css" rel="stylesheet">
    <link href="../asset/foreground/css/style.css?v=4.0.0" rel="stylesheet"><base target="_blank">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight article">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="pull-right">
                            <button class="btn btn-white btn-xs" type="button">Free_Note</button>
                            <button class="btn btn-white btn-xs" type="button">Design</button>
                            <button class="btn btn-primary btn-xs" type="button">超级VIP</button>
                        </div>
                        <div class="text-center article-title">
                            <h1><%=onenote.getTitle()%></h1>
                        </div>
                     	<%=onenote.getContent()%>
                        <hr>

                        <div class="row">
                            <div class="col-lg-12">

                              
                                
                               
                                
                                


                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- 全局js -->
    <script src="../asset/foreground/js/jquery.min.js?v=2.1.4"></script>
    <script src="../asset/foreground/js/bootstrap.min.js?v=3.3.5"></script>



    <!-- 自定义js -->
    <script src="../asset/foreground/js/content.js?v=1.0.0"></script>



</body>

</html>