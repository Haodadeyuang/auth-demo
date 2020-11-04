<%@ page import="com.togogo.service.ICheckService" %>
<%@ page import="com.togogo.service.impl.CheckServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/28
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../resources/images/favicon.png" type="image/png">

    <title>Dayu Blog</title>

    <link href="../resources/css/style.default.css" rel="stylesheet">
    <link href="../resources/css/jquery.datatables.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>
<section>
    <div class="mainpanel">
        <div class="headerbar">
        </div><!-- headerbar -->

        <div class="pageheader">
            <h2><i class="fa fa-home"></i> 仪表盘 <span></span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">DashBoard</a></li>
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </div>
        <div class="contentpanel">

            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="panel panel-success panel-stat">
                        <div class="panel-heading">
                            <div class="stat">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <img src="../resources/images/is-user.png" alt="" />
                                    </div>
                                    <div class="col-xs-8">
                                        <small class="stat-label">当前在线人数</small>
                                        <h1><%=application.getAttribute("onlineNumber")%></h1>
                                    </div>
                                </div><!-- row -->

                                <div class="mb15"></div>

                                <div class="row">
                                    <div class="col-xs-6">
                                        <small class="stat-label">Pages / Visit</small>
                                        <h4>0</h4>
                                    </div>

                                    <div class="col-xs-6">
                                        <small class="stat-label">% New Visits</small>
                                        <h4>0%</h4>
                                    </div>
                                </div><!-- row -->
                            </div><!-- stat -->

                        </div><!-- panel-heading -->
                    </div><!-- panel -->
                </div><!-- col-sm-6 -->

                <!-- 首页资源数据栏 -->
                <div class="col-sm-6 col-md-3">
                    <div class="panel panel-danger panel-stat">
                        <div class="panel-heading">

                            <div class="stat">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <img src="../resources/images/is-document.png" alt="" />
                                    </div>
                                    <div class="col-xs-8">
                                        <small class="stat-label">使用率</small>
                                        <h1><%=application.getAttribute("usageMemory")%>%</h1>
                                    </div>
                                </div><!-- row -->

                                <div class="mb15"></div>

                                <small class="stat-label">内存使用情况(mb)</small>
                                <h4><%=application.getAttribute("freeMemory")%>/126.0</h4>
                                
                            </div><!-- stat -->

                        </div><!-- panel-heading -->
                    </div><!-- panel -->
                </div><!-- col-sm-6 -->

            </div><!-- row -->

        </div><!-- contentpanel -->


    </div><!-- mainpanel -->


</section>

<script src="../resources/js/jquery-1.11.1.min.js"></script>
<script src="../resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/modernizr.min.js"></script>
<script src="../resources/js/jquery.sparkline.min.js"></script>
<script src="../resources/js/toggles.min.js"></script>
<script src="../resources/js/retina.min.js"></script>
<script src="../resources/js/jquery.cookies.js"></script>
<script src="../resources/js/custom.js"></script>
</body>
</html>
