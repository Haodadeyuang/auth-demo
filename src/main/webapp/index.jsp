<%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/23
  Time: 19:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>My Blog</title>
    <link rel="shortcut icon" href="resources/images/Logo_40.png" type="image/x-icon">
    <!-- layui.css -->
    <link href="resources/plugin/layui/css/layui.css" rel="stylesheet" />
    <!-- 本页样式 -->
    <link href="resources/css/index.css" rel="stylesheet" />
</head>
<body>
<div class="mask"></div>
<div class="main">
    <h1><span style="font-size: 84px;">B</span><span style="font-size:30px;">log</span></h1>
    <p id="time"></p>
    <div class="enter">
        Please&nbsp;&nbsp;Click&nbsp;&nbsp;Enter
    </div>
</div>
<!-- layui.js -->
<script src="resources/plugin/layui/layui.js"></script>
<!-- layui规范化用法 -->
<script type="text/javascript">
    layui.config({
        base: 'resources/js/'
    }).use('index');
</script>
</body>
</html>