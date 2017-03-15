<%@page import="cn.free.bean.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	Note note = null;
	
	note = (Note)request.getAttribute("note");
	System.out.print(note);
	request.setAttribute("note", null);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>input</title>
   

    <link rel="shortcut icon" href="favicon.ico"> <link href="../asset/foreground/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../asset/foreground/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../asset/foreground/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="../asset/foreground/css/animate.css" rel="stylesheet">
    <link href="../asset/foreground/css/style.css?v=4.0.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
     
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>我的笔记本<small>记录美好的事情</small></h5>
                        
                    </div>
                    <div class="ibox-content">
                        <form action="note_update" method="post" class="form-horizontal">
                        	<input value="<%=note.getId()%>" type="hidden" name="id">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">标题</label>

                                <div class="col-sm-10">
                                    <input name="title" type="text" class="form-control" value="<%=note.getTitle()%>">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">说明信息</label>
                                <div class="col-sm-10">
                                    <input name="info" type="text" class="form-control" value="<%=note.getInfo()%>"> <span class="help-block m-b-none">帮助文本，可能会超过一行，以块级元素显示</span>
                                </div>
                            </div>
                         
                            <div class="form-group">
                                <label class="col-sm-2 control-label">笔记内容</label>
                                <div class="col-sm-10">
                                <textarea name="content" cols="135" rows="15" id="content" ><%=note.getContent()%></textarea>
                                </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
                                    <button class="btn btn-white" type="reset">取消</button>
                                </div>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

    

    <!-- 全局js -->
    <script src="../asset/foreground/js/jquery.min.js?v=2.1.4"></script>
    <script src="../asset/foreground/js/bootstrap.min.js?v=3.3.5"></script>

   

    <!-- iCheck -->
    <script src="../asset/foreground/js/plugins/iCheck/icheck.min.js"></script>

    <script charset="utf-8" src="../asset/foreground/editor/kindeditor.js"></script>
    <script charset="utf-8" src="../asset/foreground/editor/lang/zh_CN.js"></script>
    <script>
        KindEditor.ready(function(K) {
        window.editor = K.create('#content');
        });
    </script>     
     

</body>

</html>