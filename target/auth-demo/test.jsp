
<%@ page import="com.togogo.domain.UserInfo" %>
<%@ page import="com.togogo.dao.impl.UserInfoDaoImpl" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.togogo.domain.Article" %>
<%@ page import="com.togogo.dao.impl.ArticleDaoImpl" %>
<%@ page import="com.togogo.dao.impl.UserDaoImpl" %><%--
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


<table>
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
        <td><%=Ae.getArticle_title()%></td>
        <td><%=Ae.getArticle_createtime()%></td>
        <td><%=Ae.getArticle_viewcount()%></td>
        <td class="table-action">
            <a href=""><i class="fa fa-pencil"></i></a>
            <a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
        </td>
    </tr>
    <%}%>
    </tbody>
</table>



</body>
</html>
