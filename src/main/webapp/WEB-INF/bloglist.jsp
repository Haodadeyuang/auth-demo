<%@ page import="com.togogo.dao.impl.UserDaoImpl" %>
<%@ page import="com.togogo.domain.Article" %>
<%@ page import="com.togogo.dao.impl.ArticleDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/11/3
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../resources/images/favicon.png" type="image/png">

        <title>Bracket Responsive Bootstrap3 Admin</title>

        <link href="../resources/css/style.default.css" rel="stylesheet">
        <link href="../resources/css/jquery.datatables.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="../resources/js/html5shiv.js"></script>
        <script src="../resources/js/respond.min.js"></script>
        <![endif]-->
    </head>
</head>
<body>


<section>
    <div class="mainpanel">
    <div class="headerbar">
    </div><!-- headerbar -->
    <div class="pageheader">
        <h2><i class="fa fa-table"></i> 博客列表 <span></span></h2>
        <div class="breadcrumb-wrapper">
            <span class="label">You are here:</span>
            <ol class="breadcrumb">
                <li><a href="/blogs">BlogList</a></li>
                <li class="active">BlogList</li>
            </ol>
        </div>
    </div>

    <div class="contentpanel">

        <div class="panel panel-default">

            <div class="panel-heading">
                <div class="panel-btns">
                    <a href="" class="panel-close">&times;</a>
                    <a href="" class="minimize">&minus;</a>
                </div><!-- panel-btns -->
                <h3 class="panel-title">博客列表</h3>
                <p>您可以在这里查看编辑或者直接删除您曾经发表的博客</p>
            </div>

            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped" id="table2">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>文章标题</th>
                            <th>文章发表时间</th>
                            <th>点击数</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            Integer author_id = new UserDaoImpl().getUserId((String)
                                    (request.getSession()).getAttribute(
                                            "UserName"));
                            List<Article> Tables=new ArticleDaoImpl().getUserArticles(author_id);
                            int i=0;
                            for(Article Ae:Tables)
                            {
                        %>
                        <tr>
                            <td><%=++i%></td>
                            <td><a href="/blog?article_id=<%=Ae.getArticle_id()%>">
                                <p><%=Ae.getArticle_title()%></p>
                            </a></td>
                            <td><%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Ae.getArticle_createtime())%></td>
                            <td><%=Ae.getArticle_viewcount()%></td>
                            <td class="table-action">
                                <a href="/editpage?article_id=<%=Ae.getArticle_id()%>">
                                    <i class="fa fa-pencil"></i>
                                </a>
                                <a href="/deleteArticle?article_id=<%=Ae.getArticle_id()%>"
                                   class="delete-row">
                                    <i class="fa fa-trash-o"></i>
                                </a>

                            </td>
                        </tr>
                        <%}%>

                        </tbody>
                    </table>
                </div><!-- table-responsive -->
            </div><!-- panel-body -->

        </div><!-- panel -->

    </div><!-- contentpanel -->
    </div>
</section>



<script src="../resources/js/jquery-1.11.1.min.js"></script>
<script src="../resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/modernizr.min.js"></script>
<script src="../resources/js/jquery.sparkline.min.js"></script>
<script src="../resources/js/toggles.min.js"></script>
<script src="../resources/js/retina.min.js"></script>
<script src="../resources/js/jquery.cookies.js"></script>


<script src="../resources/js/jquery.datatables.min.js"></script>
<script src="../resources/js/select2.min.js"></script>

<script src="../resources/js/custom.js"></script>
<script>
    jQuery(document).ready(function() {

        "use strict";

        jQuery('#table1').dataTable();

        jQuery('#table2').dataTable({
            "sPaginationType": "full_numbers"
        });

        // Select2
        jQuery('select').select2({
            minimumResultsForSearch: -1
        });

        jQuery('select').removeClass('form-control');

        // Delete row in a table

    });
</script>

</body>
</html>
