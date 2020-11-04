<%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/11/4
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../resources/images/favicon.png" type="image/png">

    <title>404 NOT FOUND!</title>

    <link href="../resources/css/style.default.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="notfound">


<section>

    <div class="notfoundpanel">
        <h1>404!</h1>
        <h3>您所查找的用户名并不存在!</h3>
        <h4>尝试更换其它名字进行搜索，注意，搜索时请使用对方的昵称而不是真实姓名！</h4>
    </div><!-- notfoundpanel -->

</section>


<script src="../resources/js/jquery-1.11.1.min.js"></script>
<script src="../resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/modernizr.min.js"></script>
<script src="../resources/js/jquery.sparkline.min.js"></script>
<script src="../resources/js/jquery.cookies.js"></script>

<script src="../resources/js/toggles.min.js"></script>
<script src="../resources/js/retina.min.js"></script>

<script src="../resources/js/custom.js"></script>
<script>
    jQuery(document).ready(function(){
        "use strict";

        // Do not use the code below
        // For demo purposes only
        var c = jQuery.cookie('change-skin');
        if (c && c == 'katniss') {
            jQuery('.btn-success').addClass('btn-primary').removeClass('btn-success');
        }

    });
</script>

</body>
</html>
