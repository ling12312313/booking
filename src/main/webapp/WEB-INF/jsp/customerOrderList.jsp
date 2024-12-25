<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="itcast" uri="/WEB-INF/tld/commons.tld" %>
<!-- 分页标签的引入 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>订单界面</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">飞机订票系统</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li><a href="#">
                        <div>
                            <strong>令狐冲</strong> <span class="pull-right text-muted">
									<em>昨天</em>
								</span>
                        </div>
                        <div>今天晚上向大哥找我吃饭，讨论一下去梅庄的事...</div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>查看全部消息</strong>
                        <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-messages --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>任务 1</strong> <span class="pull-right text-muted">完成40%</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-success"
                                     role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 40%">
                                    <span class="sr-only">完成40%</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <p>
                                <strong>任务 2</strong> <span class="pull-right text-muted">完成20%</span>
                            </p>
                            <div class="progress progress-striped active">
                                <div class="progress-bar progress-bar-info" role="progressbar"
                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                     style="width: 20%">
                                    <span class="sr-only">完成20%</span>
                                </div>
                            </div>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>查看所有任务</strong>
                        <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-tasks --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li><a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> 新回复 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-envelope fa-fw"></i> 新消息 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-tasks fa-fw"></i> 新任务 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="#">
                        <div>
                            <i class="fa fa-upload fa-fw"></i> 服务器重启 <span
                                class="pull-right text-muted small">4分钟之前</span>
                        </div>
                    </a></li>
                    <li class="divider"></li>
                    <li><a class="text-center" href="#"> <strong>查看所有提醒</strong>
                        <i class="fa fa-angle-right"></i>
                    </a></li>
                </ul> <!-- /.dropdown-alerts --></li>
            <!-- /.dropdown -->
            <li class="dropdown"><a class="dropdown-toggle"
                                    data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
                <i class="fa fa-caret-down"></i>
            </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a></li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li><a href="/enduser"><i class="fa fa-sign-out fa-fw"></i>
                        退出登录</a></li>
                </ul> <!-- /.dropdown-user --></li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="查询内容...">
                            <span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
                        </div> <!-- /input-group -->
                    </li>
                    <li><a href="/customer/list" class="active"><i
                            class="fa fa-edit fa-fw"></i> 管理机票</a></li>
                    <li><a href="/customer/orderList"><i
                            class="fa fa-dashboard fa-fw"></i> 管理订单</a></li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side --> </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">飞机票</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" action="${pageContext.request.contextPath }/order/list.action" method="post">
                    <div class="form-group">
                        <label for="customerName">日期</label>
                        <input type="date" class="form-control" id="customerName" value="${takeoff_time}"
                               name="takeoff_time">
                    </div>
                    <div class="form-group">
                        <label for="customerFrom">出发地</label>
                        <select class="form-control" id="customerFrom" placeholder="出发地" name="start_place">
                            <option value="">--请选择--</option>
                            <c:forEach items="${start}" var="item">
                                <option value="${item.start_place}"<c:if
                                        test="${item.start_place == start_place}"> selected</c:if>>${item.start_place }</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="custIndustry">目的地</label>
                        <select class="form-control" id="custIndustry" name="end_place">
                            <option value="">--请选择--</option>
                            <c:forEach items="${end}" var="item">
                                <option value="${item.end_place}"<c:if
                                        test="${item.end_place == end_place}"> selected</c:if>>${item.end_place }</option>
                            </c:forEach>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary">查询</button>
                    <%--                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#customerInsertDialog" >插入</a>--%>
                </form>
                <%--                <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editCustomer(${row.id})">修改</a>--%>
                <%--                <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#customerInsertDialog" onclick="insertCustomer()">插入</button>--%>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">订单列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>购票人</th>
                            <th>航班号</th>
                            <th>起飞时间</th>
                            <th>降落时间</th>
                            <th>出发地</th>
                            <th>目的地</th>
                            <th>舱型</th>
                            <th>价格</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.name}</td>
                                <td>${row.fly_name}</td>
                                <td>${row.takeoff_time}</td>
                                <td>${row.land_time}</td>
                                <td>${row.start_place}</td>
                                <td>${row.end_place}</td>
                                <td>${row.tickect_type}</td>
                                <td>${row.price}</td>

                                <td>
                                    <a href="#" class="btn btn-danger btn-xs" data-toggle="modal"
                                       data-target="#customerEditDialog" onclick="editCustomer(${row.id})">详情</a>
                                        <%--                                    <a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.id})">删除</a>--%>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <itcast:page url="${pageContext.request.contextPath }/order/list.action"/>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- 客户编辑对话框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">订单详情</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_order_form">
                    <input type="hidden" id="id" name="id"/>
                    <div class="form-group">
                        <label for="fly_name" class="col-sm-2 control-label">航班号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="fly_name" placeholder="航班号" name="fly_name"
                                   readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="type" class="col-sm-2 control-label">机型</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="type" placeholder="机型" name="type"
                                   readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="takeoff_time" class="col-sm-2 control-label">起飞时间</label>
                        <div class="col-sm-10">
                            <input type="datetime" class="form-control" id="takeoff_time" placeholder="降落时间"
                                   name="takeoff_time" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="land_time" class="col-sm-2 control-label">降落时间</label>
                        <div class="col-sm-10">
                            <input type="datetime" class="form-control" id="land_time" placeholder="降落时间"
                                   name="land_time" readonly="readonly">

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="start_place" class="col-sm-2 control-label">出发地</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="start_place" placeholder="出发地"
                                   name="start_place" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="end_place" class="col-sm-2 control-label">目的地</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="end_place" placeholder="目的地" name="end_place"
                                   readonly="readonly">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="tickect_type" class="col-sm-2 control-label">舱型</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="tickect_type" placeholder="舱型"
                                   name="tickect_type" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">价格</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="price" placeholder="价格" name="price"
                                   readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">购票人</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" placeholder="购票人" name="name"
                                   readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="idcard" class="col-sm-2 control-label">身份证号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="idcard" placeholder="身份证号" name="idcard"
                                   readonly="readonly">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

            </div>
        </div>
    </div>
</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="<%=basePath%>js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>

<script type="text/javascript">


    function editCustomer(id) {
        $.ajax({
            type: "get",
            url: "<%=basePath%>order/edit.action",
            data: {"id": id},
            dateType: "json",
            success: function (result) {
                //转成json格式
                var data = eval("(" + result + ")");
                // var data=eval("("+obj+")");
                $("#id").val(data.id);
                $("#fly_name").val(data.fly_name);
                $("#type").val(data.type);
                $("#takeoff_time").val(data.takeoff_time)
                $("#land_time").val(data.land_time)
                $("#start_place").val(data.start_place)
                $("#end_place").val(data.end_place);
                $("#tickect_type").val(data.tickect_type);
                $("#price").val(data.price);
                $("#name").val(data.name);
                $("#idcard").val(data.idcard);

            }
        });
    }


</script>

</body>

</html>

