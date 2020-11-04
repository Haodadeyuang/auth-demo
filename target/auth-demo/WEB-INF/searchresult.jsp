<%@ page import="com.togogo.dao.impl.UserInfoDaoImpl" %>
<%@ page import="com.togogo.dao.impl.UserDaoImpl" %>
<%@ page import="com.togogo.dao.impl.ArticleDaoImpl" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.togogo.domain.Article" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/11/4
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
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
    String name=(String)request.getParameter("searchword");
    userinfo=new UserInfoDaoImpl().getUserInfo(name);
%>
<section>
    <div class="mainpanel">
        <div class="headerbar">
        </div><!-- headerbar -->

        <div class="pageheader">
            <h2><i class="fa fa-user"></i> SearchResult <span></span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="/dashboard">DashBoard</a></li>
                    <li class="active">SearchResult</li>
                </ol>
            </div>
        </div>

        <div class="contentpanel">

            <div class="row">
                <div class="col-sm-3">
                    <img src="../resources/images/photos/userhead.jpg"
                         class="thumbnail img-responsive" alt="" />

                    <div class="mb30"></div>

                    <h5 class="subtitle">个人简介</h5>
                    <p class="mb30">
                        <%= userinfo.getUser_about()%>
                    </p>

                    <h5 class="subtitle">联系方式</h5>
                    <ul class="profile-social-list">
                        <li><i class="fa fa-twitter"></i>
                            <a href=""><%= userinfo.getUser_mailbox() %></a></li>
                    </ul>

                    <div class="mb30"></div>

                    <h5 class="subtitle">地址信息</h5>
                    <address>
                        <%= userinfo.getUser_city() %><br>
                        <br>
                        <abbr title="Phone">P:</abbr> <%= userinfo.getUser_phone() %>
                    </address>

                </div><!-- col-sm-3 -->
                <div class="col-sm-9">

                    <div class="profile-header">
                        <h2 class="profile-name"><%=name%></h2>
                        <div class="profile-location"><i class="fa fa-map-marker"></i>
                            <%= userinfo.getUser_location() %> </div>
                        <div class="profile-position"><i class="fa fa-briefcase"></i>
                            <%= userinfo.getUser_job() %>
                            <a href="">SomeCompany, Inc.</a></div>

                        <div class="mb20"></div>

                    </div><!-- profile-header -->

                    <!-- Tab panes -->
                    <div class="tab-content">

                        <div class="table-responsive">
                            <table class="table table-striped" id="table2">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>文章标题</th>
                                    <th>文章发表时间</th>
                                    <th>点击数</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    Integer author_id = new UserDaoImpl().getUserId((String)
                                            (request.getParameter(
                                                    "searchword")));
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

                                </tr>
                                <%}%>

                                </tbody>
                            </table>
                        </div><!-- table-responsive -->

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
</body>
</html>