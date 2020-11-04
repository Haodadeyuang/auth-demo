<%@ page import="com.togogo.dao.impl.UserInfoDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/29
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../resources/images/favicon.png" type="image/png">

    <title>Dayu Blog</title>

    <link href="../resources/css/style.default.css" rel="stylesheet">
    <link href="../resources/css/prettyPhoto.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<jsp:useBean id="userinfo" class="com.togogo.domain.UserInfo" scope="page"/>
<%
    String name = (String) session.getAttribute("UserName");
    userinfo = new UserInfoDaoImpl().getUserInfo(name);
%>
<section>
    <div class="mainpanel">
        <div class="headerbar">
        </div><!-- headerbar -->

        <div class="pageheader">
            <h2><i class="fa fa-user"></i> Profile <span></span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="/profile">Profile</a></li>
                    <li class="active">Profile</li>
                </ol>
            </div>
        </div>

        <div class="contentpanel">

            <div class="row">
                <div class="col-sm-3">
                    <img src="../resources/images/photos/userhead.jpg"
                         class="thumbnail img-responsive" alt=""/>

                    <div class="mb30"></div>

                    <h5 class="subtitle">个人简介</h5>
                    <p class="mb30">
                        <%= userinfo.getUser_about()%>
                    </p>

                    <h5 class="subtitle">联系方式</h5>
                    <ul class="profile-social-list">
                        <li><i class="fa fa-twitter"></i>
                            <a href=""><%= userinfo.getUser_mailbox() %>
                            </a></li>
                    </ul>
                    <div class="mb30"></div>
                    <h5 class="subtitle">地址信息</h5>
                    <address>
                        <%= userinfo.getUser_city() %><br>
                        <br>
                        <abbr title="Phone">Phone:</abbr> <%= userinfo.getUser_phone() %>
                    </address>
                </div><!-- col-sm-3 -->
                <div class="col-sm-9">
                    <div class="profile-header">
                        <h2 class="profile-name"><%=session.getAttribute("UserName")%>
                        </h2>
                        <div class="profile-location"><i class="fa fa-map-marker"></i>
                            <%= userinfo.getUser_location() %>
                        </div>
                        <div class="profile-position"><i class="fa fa-briefcase"></i>
                            <%= userinfo.getUser_job() %>
                            </div>
                        <div class="mb20"></div>
                        <button class="btn btn-success mr5"><i class="fa fa-user"></i>
                            Follow
                        </button>
                        <button class="btn btn-white"><i class="fa fa-envelope-o"></i>
                            Message
                        </button>
                    </div><!-- profile-header -->
                    <!-- Nav tabs -->
                    <!-- Tab panes -->
                    <div class="tab-content">
                    </div><!-- tab-content -->

                </div><!-- col-sm-9 -->
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


<script src="../resources/js/jquery.prettyPhoto.js"></script>
<script src="../resources/js/holder.js"></script>

<script src="../resources/js/custom.js"></script>
<script>
    jQuery(document).ready(function () {

        jQuery("a[data-rel^='prettyPhoto']").prettyPhoto();

    });
</script>
</body>
</html>
