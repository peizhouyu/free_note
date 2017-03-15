<%@page import="cn.free.bean.Note"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<%List<Note> noteList = (List<Note>)request.getAttribute("noteList");
	System.out.print(noteList);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>笔记列表</title>
    
	<link rel="shortcut icon" href="favicon.ico"> <link href="../asset/foreground/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../asset/foreground/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="../asset/foreground/css/animate.css" rel="stylesheet">
    <link href="../asset/foreground/css/style.css?v=4.0.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight blog">
        <div class="row">
            <div class="col-lg-4">
            
              <s:iterator value="#request.noteList" status="stat" id="sd">  
                    <div class="ibox">
                    <div class="ibox-content">
                        <a href="note_getone?id=<s:property value="id"/>" class="btn-link">
                            <h2><s:property value="title"/></h2>
                        </a>
                        <div class="small m-b-xs">
                            <strong><s:property value="userName"/></strong> <span class="text-muted"><i class="fa fa-clock-o"></i><s:property value="time"/></span>
                        </div>
                        <p><s:property value="content"/></p>
                        <div class="row">
                            <div class="col-md-6">
                                <h5>操作：</h5>
                                <a href="note_change?id=<s:property value="id"/>"><button class="btn btn-primary btn-xs" type="button">修改</button></a>
                                <a href="note_delete?del_id=<s:property value="id"/>"><button class="btn btn-primary btn-xs" type="button">删除</button></a>
                            </div>
                            <div class="col-md-6">
                                <div class="small text-right">
                                    <h5>状态：</h5>
                                    <div> <i class="fa fa-comments-o"> </i> 56 评论 </div>
                                    <i class="fa fa-eye"> </i> 144 浏览
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			  </s:iterator>  
         
               
            </div>
        <!--     <div class="col-lg-4">
                
                
               
            </div>
            <div class="col-lg-4">
                
               
               
            </div> -->
        </div>
    </div>

    <!-- 全局js -->
    <script src="../asset/foreground/js/jquery.min.js?v=2.1.4"></script>
    <script src="../asset/foreground/js/bootstrap.min.js?v=3.3.5"></script>

    <!-- 自定义js -->
    <script src="../asset/foreground/js/content.js?v=1.0.0"></script>




</body>

</html>