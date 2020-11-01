
<%@ page import="com.togogo.domain.UserInfo" %>
<%@ page import="com.togogo.dao.impl.UserInfoDaoImpl" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/29
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    for(int i=0; i<6; i++){
        if(i%2==1)
        {
%>

<div class="media">
    <a class="pull-left" href="#">
        <img class="media-object" src="../resources/holder.js/100x125.html" alt="" />
    </a>
    <div class="media-body">
        <h3 class="follower-name">Ray Sin</h3>
        <div class="profile-location"><i class="fa fa-map-marker"></i> San Francisco, California, USA</div>
        <div class="profile-position"><i class="fa fa-briefcase"></i> Software Engineer at <a href="">SomeCompany, Inc.</a></div>

        <div class="mb20"></div>

        <button class="btn btn-sm btn-success mr5"><i class="fa fa-user"></i> Follow</button>
        <button class="btn btn-sm btn-white"><i class="fa fa-envelope-o"></i> Message</button>
    </div>
</div><!-- media -->


<%}}%>

</body>
</html>
