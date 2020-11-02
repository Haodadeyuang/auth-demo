<%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/31
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../resources/css/favicon.png" type="image/png">
    <title>新建文章</title>
    <link href="../resources/css/style.default.css" rel="stylesheet">
    <link rel="stylesheet" href="../resources/css/bootstrap-wysihtml5.css" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<section>
    <div class="mainpanel">
        <div class="headerbar">
        </div><!-- headerbar -->

        <div class="pageheader">
            <h2><i class="fa fa-pencil"></i> 新建文章 <span></span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="/articles">Articles</a></li>
                    <li class="active">Articles</li>
                </ol>
            </div>
        </div>

        <div class="contentpanel">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-btns">
                        <a href="" class="panel-close">&times;</a>
                        <a href="" class="minimize">&minus;</a>
                    </div>
                    <h4 class="panel-title">开始您的博客编写，让世界聆听你的声音</h4>
                    <p>一篇文章的标题跟正文是不可或缺的，排版等格式问题可以根据您个人习惯进行。</p>
                </div>

                <form name="UserInfoForm" action="/createArticle" method="post"
                      class="form-horizontal form-bordered">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">文章标题</label>
                        <div class="col-sm-6">
                            <input type="text"
                                   name="user_mailbox" placeholder=""
                                   value=""
                                   class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="panel-body">
                            <textarea id="wysiwyg" placeholder="Enter text here..." class="form-control" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">文章大纲</label>
                        <div class="input-group mb10">
                            <span class="input-group-btn">
                    <button type="button" class="btn btn-default">提交博客</button>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
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


<script src="../resources/js/wysihtml5-0.3.0.min.js"></script>
<script src="../resources/js/bootstrap-wysihtml5.js"></script>
<script src="../resources/js/ckeditor/ckeditor.js"></script>
<script src="../resources/js/ckeditor/adapters/jquery.js"></script>

<script src="../resources/js/custom.js"></script>

<script>
    jQuery(document).ready(function(){

        "use strict";

        // HTML5 WYSIWYG Editor
        jQuery('#wysiwyg').wysihtml5({color: true,html:true});

        // CKEditor
        jQuery('#ckeditor').ckeditor();

        jQuery('#inlineedit1, #inlineedit2').ckeditor();

        // Uncomment the following code to test the "Timeout Loading Method".
        // CKEDITOR.loadFullCoreTimeout = 5;

        window.onload = function() {
            // Listen to the double click event.
            if ( window.addEventListener )
                document.body.addEventListener( 'dblclick', onDoubleClick, false );
            else if ( window.attachEvent )
                document.body.attachEvent( 'ondblclick', onDoubleClick );
        };

        function onDoubleClick( ev ) {
            // Get the element which fired the event. This is not necessarily the
            // element to which the event has been attached.
            var element = ev.target || ev.srcElement;

            // Find out the div that holds this element.
            var name;

            do {
                element = element.parentNode;
            }
            while ( element && ( name = element.nodeName.toLowerCase() ) &&
            ( name != 'div' || element.className.indexOf( 'editable' ) == -1 ) && name != 'body' );

            if ( name == 'div' && element.className.indexOf( 'editable' ) != -1 )
                replaceDiv( element );
        }

        var editor;

        function replaceDiv( div ) {
            if ( editor )
                editor.destroy();
            editor = CKEDITOR.replace( div );
        }

    });
</script>

</body>
</html>
