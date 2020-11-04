<%@ page import="com.togogo.domain.Article" %>
<%@ page import="com.togogo.dao.impl.ArticleDaoImpl" %>
<%@ page import="com.togogo.dao.impl.UserDaoImpl" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/11/3
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>
<section>
    <div class="mainpanel">
        <div class="headerbar"></div>
        <div class="pageheader">
            <h2><i class="fa fa-file-text"></i> Blog
                <span></span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="/blogs">BlogList</a></li>
                    <li class="active">Blog</li>
                </ol>
            </div>
        </div>
        <div class="contentpanel">
            <div class="panel panel-default panel-blog">
                <div class="panel-body">
                    <%
                        Integer
                                article_id=Integer.valueOf(request.getParameter("article_id"));
                        Article ar = new ArticleDaoImpl().selectArticle(article_id);
                        new ArticleDaoImpl().addViewcount(article_id);
                    %>
                    <h3 class="blogsingle-title"><%=ar.getArticle_title()%></h3>
                    <ul class="blog-meta">
                        <li>By: <a href=""><%=ar.getAuthor_id()%></a></li>
                        <li><%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(ar.getArticle_createtime())%></li>
                        <li>访问次数：<%=ar.getArticle_viewcount()%></li>
                    </ul>
                    <br/>
                    <div class="mb20"></div>
                    <p>
                        <%=ar.getArticle_content()%>
                    </p>
                </div><!-- panel-body -->
            </div><!-- panel -->
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
<script>
    jQuery(window).load(function () {

        "use strict";

        var container = document.querySelector('#bloglist');
        var msnry = new Masonry(container, {
            // options
            columnWidth: '.col-xs-6',
            itemSelector: '.col-xs-6'
        });

    });
</script>

</body>
</html>

