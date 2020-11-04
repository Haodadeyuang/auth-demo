<%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/23
  Time: 19:54
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
    <link rel="shortcut icon" href="resources/images/favicon.png" type="image/png">

    <title>Dayu Blog</title>

    <link href="resources/css/style.default.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="resources/js/html5shiv.js"></script>
    <script src="resources/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="signin">


<section>

    <div class="signinpanel">
        <div class="row">
            <div class="col-md-7">

                <div class="signin-info">
                    <div class="logopanel">
                        <h1><span>[</span> Dayu <span>]</span></h1>
                    </div><!-- logopanel -->

                    <div class="mb20"></div>

                    <h5><strong>欢迎使用大鱼博客!</strong></h5>
                    <ul>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> 基于html5
                            跟javascript的前端平台，UI组件包括bootstrap
                        </li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> 基于java
                            web开发的后台博客管理应用
                        </li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i>
                            Web容器使用Apache Tomcat
                        </li>
                    </ul>
                    <div class="mb20"></div>
                    <strong>还没有账号? <a href="signup.jsp">立刻注册</a></strong>
                </div><!-- signin0-info -->

            </div><!-- col-sm-7 -->

            <div class="col-md-5">
                <form method="post" action="/auth">

                    <p class="mt5 mb20">进行后续操作需要您先认证身份</p>
                    <input type="text" name="name" autocomplete="off"
                           class="form-control uname"
                           placeholder="Username"/>
                    <input type="password" name="password" autocomplete="off"
                           class="form-control pword"
                           placeholder="Password"/>
                    <!-- <a href=""><small>Forgot Your Password?</small></a> -->
                    <button class="btn btn-success btn-block">登录</button>
                </form>
            </div><!-- col-sm-5 -->
        </div><!-- row -->
        <div class="signup-footer">

            <div class="pull-left">
            </div>
            <div class="pull-right">
                Github链接: <a href="https://github.com/Haodadeyuang/auth-demo"
                             target="_blank">My Blog</a>
            </div>
        </div>


    </div><!-- signin -->

</section>


<script src="resources/js/jquery-1.11.1.min.js"></script>
<script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/modernizr.min.js"></script>
<script src="resources/js/jquery.sparkline.min.js"></script>
<script src="resources/js/jquery.cookies.js"></script>
<script src="resources/js/toggles.min.js"></script>
<script src="resources/js/retina.min.js"></script>
<script src="resources/js/custom.js"></script>
<script>


    jQuery(document).ready(function () {
        // Please do not use the code below
        // This is for demo purposes only
        var c = jQuery.cookie('change-skin');
        if (c && c == 'greyjoy') {
            jQuery('.btn-success').addClass('btn-orange').removeClass('btn-success');
        } else if (c && c == 'dodgerblue') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        } else if (c && c == 'katniss') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        }
    });
</script>

</body>
</html>
