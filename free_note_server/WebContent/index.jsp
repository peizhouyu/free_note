<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>Free_Note</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="asset/foreground/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="asset/foreground/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="asset/foreground/css/animate.css" rel="stylesheet">
    <link href="asset/foreground/css/style.css?v=4.0.0" rel="stylesheet">

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom white-bg">
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <a href="#" class="navbar-brand">Free_Note</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a aria-expanded="false" role="button" href="inde/checklogin"> 登录您的账户</a>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 主页导航 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="inde/extra/developing.jsp">Free的开发过程</a>
                                    </li>
                                    <li><a href="building">菜单列表</a>
                                    </li>
                                    <li><a href="building">菜单列表</a>
                                    </li>
                                    <li><a href="building">菜单列表</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 客户端下载 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="building">PC端</a>
                                    </li>
                                    <li><a href="AndroidDownPage">Android客户端</a>
                                    </li>
                                    <li><a href="building">IOS客户端</a>
                                    </li>
                                    <li><a href="building">UWP版</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 交流区 <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="inde/bbs/bbs_main.jsp">Free论坛</a>
                                    </li>
                                    <li><a href="http://www.facebook.com">Free Facebook主页</a>
                                    </li>
                                    <li><a href="building">Free微信公众号</a>
                                    </li>
                                    <li><a href="building">Free贴吧</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 关于mrpei <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="http://www.mrpei.cn/blog">Mrpei的博客</a>
                                    </li>
                                    <li><a href="">Mrpei的自拍</a>
                                    </li>
                                    <li><a href="">给他介绍对象</a>
                                    </li>
                                    <li><a href="">赞助辛苦的IT男</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                      <!--    <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a href="login.html">
                                    <i class="fa fa-sign-out"></i> 退出
                                </a>
                            </li>
                        </ul>
                        -->
                    </div>
                </nav>
            </div>

            <div id="myCarousel" class="carousel slide "> 
                <!-- 轮播（Carousel）指标 --> 
                <ol class="carousel-indicators"> 
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li> 
                    <li data-target="#myCarousel" data-slide-to="1"></li> 
                    <li data-target="#myCarousel" data-slide-to="2"></li> 
                </ol> 
                <!-- 轮播（Carousel）项目 --> 
                <div class="carousel-inner"> 
                    <div class="item active"> 
                        <img src="asset/foreground/banner/0.jpg" alt="First slide"> 
                    </div> 
                    <div class="item"> 
                        <img src="asset/foreground/banner/1.jpg" alt="Second slide"> 
                    </div> 
                    <div class="item"> 
                        <img src="asset/foreground/banner/2.jpg" alt="Third slide"> 
                    </div> 
                </div> 
                <!-- 轮播（Carousel）导航 --> 
                <a class="carousel-control left" href="#myCarousel" 
                    data-slide="prev">&lsaquo; 
                </a> 
                <a class="carousel-control right" href="#myCarousel" 
                    data-slide="next">&rsaquo; 
                </a> 
            </div>

            <div class="wrapper wrapper-content">
                <div class="container">

                    <div class="row">
                        <div class="col-md-2">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-success pull-right">月</span>
                                    <h5>浏览量</h5>
                                </div>
                                <div class="ibox-content">
                                    <h1 class="no-margins">000,026</h1>
                                    <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i>
                                    </div>
                                    <small>总计浏览量</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-info pull-right">日</span>
                                    <h5>用户数</h5>
                                </div>
                                <div class="ibox-content">
                                    <h1 class="no-margins">00,006</h1>
                                    <div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i>
                                    </div>
                                    <small>新用户</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-primary pull-right">今天</span>
                                    <h5>访问人次</h5>
                                </div>
                                <div class="ibox-content">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <h1 class="no-margins"> 000,006</h1>
                                            <div class="font-bold text-navy">4% <i class="fa fa-level-up"></i> <small>增长较快</small>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <h1 class="no-margins">000,002</h1>
                                            <div class="font-bold text-navy">22% <i class="fa fa-level-up"></i> <small>增长较慢</small>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>运行状态</h5>
                                    <div class="ibox-tools">
                                        <span class="label label-primary">2016.09 更新</span>
                                    </div>
                                </div>
                                <div class="ibox-content no-padding">
                                    <div class="flot-chart m-t-lg" style="height: 55px;">
                                        <div class="flot-chart-content" id="flot-chart1"></div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
               
                    
                    <div class="row">
                    <div class="col-sm-12">
                        <div class="wrapper wrapper-content animated fadeInUp">
                            <ul class="notes">
                                <li>
                                    <div>
                                        <small>2016年09月01日(星期五) 下午5:31</small>
                                        <h4>开发者有话说</h4>
                                        <p>作为一个行内人，经常需要随手记一些东西，并且能实现多终端同步，我亲身体会过好几家的笔记作品，某象笔记，某云笔记，刚开始用着还行，之后随着需求在变大，发现要实现必要的功能必须的付不少的RMB，作为一个烧硬件IT男必然是拒绝的，于是Free_Note变诞生了，"人"如其名。<br/></p>
                                       <!-- <a href="pin_board.html#"><i class="fa fa-trash-o "></i></a> -->
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <small>2016年09月01日(星期五) 下午5:31</small>
                                        <h4>关于开发进度及bug修复</h4>
                                        <p>由于整个项目都是我一个人在开发，从设计，到前端多客户端，到后台数据服务，到服务器部署运维，时间精力有限，有些非必要更新可能会有延迟，见谅，有问题可以通过各种手段向我反馈，也可以在Free论坛讨论……</p>
                                        
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <small>2016年09月01日(星期五) 下午5:31</small>
                                        <h4>来自MrPei的公告</h4>
                                        <p>Free_Note及其他Free软件，版权属于mrpei</p>
                                        
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <small>2016年09月01日(星期五) 下午5:31</small>
                                        <h4>来自系统的公告</h4>
                                        <p>运行过程中发现大量错误，程序即将崩溃...</p>
                                        
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <small>2016年09月01日(星期五) 下午5:31</small>
                                        <h4>来自MrPei的公告</h4>
                                        <p>没什么事就想写个公告......</p>
                                       
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <small>2016年09月01日(星期五) 下午5:31</small>
                                        <h4>来自MrPei的公告</h4>
                                        <p>写了一下午吸一支烟......</p>
                                        
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>





                </div>

            </div>
            <div class="footer">
                <div class="pull-right">
                    By：<a href="http://www.mrpei.cn/blog" target="_blank">MrPei's blog</a>
                </div>
                <div>
                    <strong>Copyright</strong> MrPei &copy; 2016
                </div>
            </div>

        </div>
    </div>



    <!-- 全局js -->
    <script src="asset/foreground/js/jquery.min.js?v=2.1.4"></script>
    <script src="asset/foreground/js/bootstrap.min.js?v=3.3.5"></script>



  


    <!-- Flot -->
    <script src="asset/foreground/js/plugins/flot/jquery.flot.js"></script>
    <script src="asset/foreground/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="asset/foreground/js/plugins/flot/jquery.flot.resize.js"></script>

    <!-- ChartJS-->
    <script src="asset/foreground/js/plugins/chartasset/foreground/js/Chart.min.js"></script>

    <!-- Peity -->
    <script src="asset/foreground/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- Peity demo -->
    <script src="asset/foreground/js/demo/peity-demo.js"></script>


    <script>
        $(document).ready(function () {


            var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
            var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];

            var data1 = [
                {
                    label: "数据1",
                    data: d1,
                    color: '#17a084'
                },
                {
                    label: "数据2",
                    data: d2,
                    color: '#127e68'
                }
            ];
            $.plot($("#flot-chart1"), data1, {
                xaxis: {
                    tickDecimals: 0
                },
                series: {
                    lines: {
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 1
                            }, {
                                opacity: 1
                            }]
                        },
                    },
                    points: {
                        width: 0.1,
                        show: false
                    },
                },
                grid: {
                    show: false,
                    borderWidth: 0
                },
                legend: {
                    show: false,
                }
            });

            var lineData = {
                labels: ["一月", "二月", "三月", "四月", "五月", "六月", "七月"],
                datasets: [
                    {
                        label: "示例数据",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,1)",
                        pointColor: "rgba(220,220,220,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(220,220,220,1)",
                        data: [65, 59, 40, 51, 36, 25, 40]
                    },
                    {
                        label: "示例数据",
                        fillColor: "rgba(26,179,148,0.5)",
                        strokeColor: "rgba(26,179,148,0.7)",
                        pointColor: "rgba(26,179,148,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(26,179,148,1)",
                        data: [48, 48, 60, 39, 56, 37, 30]
                    }
                ]
            };

            var lineOptions = {
                scaleShowGridLines: true,
                scaleGridLineColor: "rgba(0,0,0,.05)",
                scaleGridLineWidth: 1,
                bezierCurve: true,
                bezierCurveTension: 0.4,
                pointDot: true,
                pointDotRadius: 4,
                pointDotStrokeWidth: 1,
                pointHitDetectionRadius: 20,
                datasetStroke: true,
                datasetStrokeWidth: 2,
                datasetFill: true,
                responsive: true,
            };


            var ctx = document.getElementById("lineChart").getContext("2d");
            var myNewChart = new Chart(ctx).Line(lineData, lineOptions);

        });
    </script>

  
</body>

</html>