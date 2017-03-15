<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>日历</title>
   
    <link rel="shortcut icon" href="favicon.ico"> <link href="../../asset/foreground/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../../asset/foreground/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="../../asset/foreground/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="../../asset/foreground/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="../../asset/foreground/css/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet">

    <link href="../../asset/foreground/css/animate.css" rel="stylesheet">
    <link href="../../asset/foreground/css/style.css?v=4.0.0" rel="stylesheet"><base target="_blank">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row animated fadeInDown">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>工作计划</h5>
                        
                    </div>
                    <div class="ibox-content">
                        <div id='external-events'>
                            <p>可执行的活动</p>
                            <div class='external-event navy-bg'>确定活动目标</div>
                            <div class='external-event navy-bg'>各部门职责及分工</div>
                            <div class='external-event navy-bg'>案例分享</div>
                            <div class='external-event navy-bg'>xxx</div>
                            <p class="m-t">
                                <input type='checkbox' id='drop-remove' class="i-checks" checked />
                                <label for='drop-remove'>移动后删除</label>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <h2>FreeCalendar</h2> 基于jQuery，它提供了全尺寸，可拖动，使用Ajax的操作方式，并且可以使用自己的feed格式，如谷歌日历。
                        <p>
                            <a href="http://www.mrpei.cn/blog" target="_blank">更多访问MrPei博客</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>FreeCalendar示例 </h5>
                        
                    </div>
                    <div class="ibox-content">
                        <div id="calendar"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- 全局js -->
    <script src="../../asset/foreground/js/jquery.min.js?v=2.1.4"></script>
    <script src="../../asset/foreground/js/bootstrap.min.js?v=3.3.5"></script>



    <!-- 自定义js -->
    <script src="../../asset/foreground/js/content.js?v=1.0.0"></script>


    <script src="../../asset/foreground/js/jquery-ui.custom.min.js"></script>

    <!-- iCheck -->
    <script src="../../asset/foreground/js/plugins/iCheck/icheck.min.js"></script>

    <!-- Full Calendar -->
    <script src="../../asset/foreground/js/plugins/fullcalendar/fullcalendar.min.js"></script>

    <script>
        $(document).ready(function () {

            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });

            /* initialize the external events
             -----------------------------------------------------------------*/

            $('#external-events div.external-event').each(function () {

                // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                // it doesn't need to have a start or end
                var eventObject = {
                    title: $.trim($(this).text()) // use the element's text as the event title
                };

                // store the Event Object in the DOM element so we can get to it later
                $(this).data('eventObject', eventObject);

                // make the event draggable using jQuery UI
                $(this).draggable({
                    zIndex: 999,
                    revert: true, // will cause the event to go back to its
                    revertDuration: 0 //  original position after the drag
                });

            });


            /* initialize the calendar
             -----------------------------------------------------------------*/
            var date = new Date();
            var d = date.getDate();
            var m = date.getMonth();
            var y = date.getFullYear();

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                editable: true,
                droppable: true, // this allows things to be dropped onto the calendar !!!
                drop: function (date, allDay) { // this function is called when something is dropped

                    // retrieve the dropped element's stored Event Object
                    var originalEventObject = $(this).data('eventObject');

                    // we need to copy it, so that multiple events don't have a reference to the same object
                    var copiedEventObject = $.extend({}, originalEventObject);

                    // assign it the date that was reported
                    copiedEventObject.start = date;
                    copiedEventObject.allDay = allDay;

                    // render the event on the calendar
                    // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                    $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                    // is the "remove after drop" checkbox checked?
                    if ($('#drop-remove').is(':checked')) {
                        // if so, remove the element from the "Draggable Events" list
                        $(this).remove();
                    }

                },
                events: [
                    {
                        title: '日事件',
                        start: new Date(y, m, 1)
                    },
                    {
                        title: '长事件',
                        start: new Date(y, m, d - 5),
                        end: new Date(y, m, d - 2),
                    },
                    {
                        id: 999,
                        title: '重复事件',
                        start: new Date(y, m, d - 3, 16, 0),
                        allDay: false,
                    },
                    {
                        id: 999,
                        title: '重复事件',
                        start: new Date(y, m, d + 4, 16, 0),
                        allDay: false
                    },
                    {
                        title: '会议',
                        start: new Date(y, m, d, 10, 30),
                        allDay: false
                    },
                    {
                        title: '午餐',
                        start: new Date(y, m, d, 12, 0),
                        end: new Date(y, m, d, 14, 0),
                        allDay: false
                    },
                    {
                        title: '生日',
                        start: new Date(y, m, d + 1, 19, 0),
                        end: new Date(y, m, d + 1, 22, 30),
                        allDay: false
                    },
                    {
                        title: '打开百度',
                        start: new Date(y, m, 28),
                        end: new Date(y, m, 29),
                        url: 'http://baidu.com/'
                    }
                ],
            });


        });
    </script>
   

</body>

</html>