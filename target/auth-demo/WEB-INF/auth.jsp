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

    <title>大鱼Blog</title>

    <link href="../resources/css/style.default.css" rel="stylesheet">
    <link href="../resources/css/jquery.gritter.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>


    <![endif]-->
</head>

<body>

<!-- 加载动画 -->
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>

<section>
    <!-- 布局左侧 保留左侧导航栏 -->
    <div class="leftpanel">
        <!-- Logo，考虑图标 -->
        <div class="logopanel">
            <h1><span>[</span> Dayu
                <span>]</span></h1>
        </div><!-- logopanel -->

        <div class="leftpanelinner">
            <!-- This is only visible to small devices -->
            <h5 class="sidebartitle">Navigation</h5>
            <!-- 左侧导航栏，iframe框架主题，不可删除 -->
            <ul class="nav nav-pills nav-stacked nav-bracket">

                <li class="active">
                    <a href="/dashboard" target="authIframe">
                        <i class="fa fa-home"></i>
                    <span>仪表盘</span>
                    </a>
                </li>

                <li><a href="/emails" target="authIframe">
                    <span class="pull-right badge badge-success">2</span>
                    <i class="fa fa-envelope-o"></i>
                    <span>我的邮箱</span>
                </a></li>

                <li><a href="/tables" target="authIframe"><i class="fa fa-th-list"></i>
                    <span>个人信息</span></a>
                </li>

                <li><a href="/blogs" target="authIframe"><i class="fa fa-bold"></i>
                    <span>博客管理</span></a>
                </li>

                <li><a href="/articles" target="authIframe"><i class="fa fa-edit"></i>
                    <span>新建文章</span></a>
                </li>

            </ul>


        </div><!-- leftpanelinner -->
    </div><!-- leftpanel -->

    <div class="mainpanel">

        <div class="headerbar">

            <div class="header-right">
                <ul class="headermenu">

                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle"
                                    data-toggle="dropdown">
                                <img src="../resources/images/photos/loggeduser.png" alt=""/>
                                <%=session.getAttribute("UserName")%>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                                <li><a href="/profile" target="authIframe"><i
                                        class="glyphicon glyphicon-user"></i> My
                                    Profile</a></li>
                                <li><a href="/signOut"><i
                                        class="glyphicon glyphicon-log-out"></i> Sign out
                                </a></li>
                            </ul>
                        </div>
                    </li>
                    
                </ul>
            </div><!-- header-right -->

        </div><!-- headerbar -->
        <div class="AuthIframe">
            <iframe src="/dashboard" height="1500px" name="authIframe" id="authIframe"
                    width="100%"
                    scrolling="no"
                    frameborder="0">
            </iframe>
        </div>


    </div><!-- mainpanel -->


</section>
<script src="../resources/js/jquery-1.11.1.min.js"></script>
<script src="../resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../resources/js/jquery-ui-1.10.3.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/modernizr.min.js"></script>
<script src="../resources/js/jquery.sparkline.min.js"></script>
<script src="../resources/js/toggles.min.js"></script>
<script src="../resources/js/retina.min.js"></script>
<script src="../resources/js/jquery.cookies.js"></script>
<script src="../resources/js/flot/jquery.flot.min.js"></script>
<script src="../resources/js/flot/jquery.flot.resize.min.js"></script>
<script src="../resources/js/flot/jquery.flot.spline.min.js"></script>
<script src="../resources/js/morris.min.js"></script>
<script src="../resources/js/raphael-2.1.0.min.js"></script>
<script src="../resources/js/custom.js"></script>
<script src="../resources/js/dashboard.js"></script>

<div style="text-align:center;">

</div>
</body>
</html>
