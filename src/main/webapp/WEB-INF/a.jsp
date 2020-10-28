<%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/28
  Time: 20:46
  To change this template use File | Settings | File Templates.
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
    <link rel="shortcut icon" href="images/favicon.png" type="image/png">

    <title>Bracket Responsive Bootstrap3 Admin</title>

    <link href="css/style.default.css" rel="stylesheet">
    <link href="css/jquery.datatables.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>
<section>
    <div class="leftpanel">
        <div class="leftpanelinner">

            <!-- This is only visible to small devices -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media userlogged">
                    <img alt="" src="images/photos/loggeduser.png" class="media-object">
                    <div class="media-body">
                        <h4>John Doe</h4>
                        <span>"Life is so..."</span>
                    </div>
                </div>

                <h5 class="sidebartitle actitle">Account</h5>
                <ul class="nav nav-pills nav-stacked nav-bracket mb30">
                    <li><a href="profile.html"><i class="fa fa-user"></i>
                        <span>Profile</span></a></li>
                    <li><a href=""><i class="fa fa-cog"></i> <span>Account Settings</span></a>
                    </li>
                    <li><a href=""><i class="fa fa-question-circle"></i> <span>Help</span></a>
                    </li>
                    <li><a href="signout.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a>
                    </li>
                </ul>
            </div>

            <h5 class="sidebartitle">Navigation</h5>
            <ul class="nav nav-pills nav-stacked nav-bracket">
                <li><a href="index.html" target="iframe_a"><i class="fa fa-home"></i>
                    <span>Dashboard</span></a></li>
                <li><a href="email.html" target="iframe_a"><span
                        class="pull-right badge badge-success">2
            </span><i class="fa fa-envelope-o"></i> <span>Email</span></a></li>
                <li class="nav-parent"><a href=""><i class="fa fa-edit"></i>
                    <span>Forms</span></a>
                    <ul class="children">
                        <li><a href="general-forms.html"><i class="fa fa-caret-right"></i>
                            General Forms</a></li>
                        <li><a href="form-layouts.html"><i class="fa fa-caret-right"></i>
                            Form Layouts</a></li>
                        <li><a href="form-validation.html"><i
                                class="fa fa-caret-right"></i> Form Validation</a></li>
                        <li><a href="form-wizards.html"><i class="fa fa-caret-right"></i>
                            Form Wizards</a></li>
                        <li><a href="wysiwyg.html"><i class="fa fa-caret-right"></i> Text
                            Editor</a></li>
                        <li><a href="code-editor.html"><i class="fa fa-caret-right"></i>
                            Code Editor</a></li>
                        <li><a href="x-editable.html"><i class="fa fa-caret-right"></i>
                            X-Editable</a></li>
                    </ul>
                </li>
                <li class="nav-parent"><a href=""><i class="fa fa-suitcase"></i> <span>UI Elements</span></a>
                    <ul class="children">
                        <li><a href="buttons.html"><i class="fa fa-caret-right"></i>
                            Buttons</a></li>
                        <li><a href="icons.html"><span
                                class="pull-right badge badge-danger">updated</span><i
                                class="fa fa-caret-right"></i> Icons</a></li>
                        <li><a href="typography.html"><i class="fa fa-caret-right"></i>
                            Typography</a></li>
                        <li><a href="alerts.html"><i class="fa fa-caret-right"></i> Alerts
                            &amp; Notifications</a></li>
                        <li><a href="modals.html"><i class="fa fa-caret-right"></i> Modals</a>
                        </li>
                        <li><a href="tabs-accordions.html"><i
                                class="fa fa-caret-right"></i> Tabs &amp; Accordions</a>
                        </li>
                        <li><a href="sliders.html"><i class="fa fa-caret-right"></i>
                            Sliders</a></li>
                        <li><a href="graphs.html"><i class="fa fa-caret-right"></i> Graphs
                            &amp; Charts</a></li>
                        <li><a href="widgets.html"><i class="fa fa-caret-right"></i>
                            Panels &amp; Widgets</a></li>
                        <li><a href="extras.html"><i class="fa fa-caret-right"></i> Extras</a>
                        </li>
                    </ul>
                </li>
                <li class="active"><a href="tables.html"><i class="fa fa-th-list"></i>
                    <span>Tables</span></a></li>
                <li class="nav-parent"><a href=""><i class="fa fa-bug"></i> <span>Bug Tracker</span></a>
                    <ul class="children">
                        <li><a href="bug-tracker.html"><i class="fa fa-caret-right"></i>
                            Summary</a></li>
                        <li><a href="bug-issues.html"><i class="fa fa-caret-right"></i>
                            Issues</a></li>
                        <li><a href="view-issue.html"><i class="fa fa-caret-right"></i>
                            View Issue</a></li>
                    </ul>
                </li>
                <li><a href="maps.html"><i class="fa fa-map-marker"></i> <span>Maps</span></a>
                </li>
                <li class="nav-parent"><a href=""><i class="fa fa-file-text"></i> <span>Pages</span></a>
                    <ul class="children">
                        <li><a href="calendar.html"><i class="fa fa-caret-right"></i>
                            Calendar</a></li>
                        <li><a href="media-manager.html"><i class="fa fa-caret-right"></i>
                            Media Manager</a></li>
                        <li><a href="timeline.html"><i class="fa fa-caret-right"></i>
                            Timeline</a></li>
                        <li><a href="blog-list.html"><i class="fa fa-caret-right"></i>
                            Blog List</a></li>
                        <li><a href="blog-single.html"><i class="fa fa-caret-right"></i>
                            Blog Single</a></li>
                        <li><a href="people-directory.html"><i
                                class="fa fa-caret-right"></i> People Directory</a></li>
                        <li><a href="profile.html"><i class="fa fa-caret-right"></i>
                            Profile</a></li>
                        <li><a href="invoice.html"><i class="fa fa-caret-right"></i>
                            Invoice</a></li>
                        <li><a href="search-results.html"><i
                                class="fa fa-caret-right"></i> Search Results</a></li>
                        <li><a href="blank.html"><i class="fa fa-caret-right"></i> Blank
                            Page</a></li>
                        <li><a href="notfound.html"><i class="fa fa-caret-right"></i> 404
                            Page</a></li>
                        <li><a href="locked.html"><i class="fa fa-caret-right"></i> Locked
                            Screen</a></li>
                        <li><a href="signin.html"><i class="fa fa-caret-right"></i> Sign
                            In</a></li>
                        <li><a href="signup.html"><i class="fa fa-caret-right"></i> Sign
                            Up</a></li>
                    </ul>
                </li>
                <li class="nav-parent"><a href="layouts.html"><i class="fa fa-laptop"></i>
                    <span>Skins &amp; Layouts</span></a>
                    <ul class="children">
                        <li><a href="layouts.html"><i class="fa fa-caret-right"></i>
                            General Layouts</a></li>
                        <li><a href="horizontal-menu.html"><i
                                class="fa fa-caret-right"></i> Top Menu</a></li>
                        <li><a href="horizontal-menu2.html"><i
                                class="fa fa-caret-right"></i> Top Menu w/ Sidebar</a>
                        </li>
                        <li><a href="fixed-width.html"><i class="fa fa-caret-right"></i>
                            Fixed Width Page</a></li>
                        <li><a href="fixed-width2.html"><i class="fa fa-caret-right"></i>
                            Fixed Width w/ Menu</a></li>
                    </ul>
                </li>
            </ul>


        </div><!-- leftpanelinner -->
    </div><!-- leftpanel -->

    <div class="mainpanel">

        <div class="headerbar">

            <a class="menutoggle"><i class="fa fa-bars"></i></a>

            <form class="searchform" action="index.html" method="post">
                <input type="text" class="form-control" name="keyword"
                       placeholder="Search here..."/>
            </form>

            <div class="header-right">
                <ul class="headermenu">
                    <li>
                        <div class="btn-group">
                            <button class="btn btn-default dropdown-toggle tp-icon"
                                    data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span class="badge">2</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-head pull-right">
                                <h5 class="title">2 Newly Registered Users</h5>
                                <ul class="dropdown-list user-list">
                                    <li class="new">
                                        <div class="thumb"><a href=""><img
                                                src="images/photos/user1.png" alt=""/></a>
                                        </div>
                                        <div class="desc">
                                            <h5><a href="">Draniem Daamul (@draniem)</a>
                                                <span class="badge badge-success">new</span>
                                            </h5>
                                        </div>
                                    </li>
                                    <li class="new">
                                        <div class="thumb"><a href=""><img
                                                src="images/photos/user2.png" alt=""/></a>
                                        </div>
                                        <div class="desc">
                                            <h5><a href="">Zaham Sindilmaca (@zaham)</a>
                                                <span class="badge badge-success">new</span>
                                            </h5>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="thumb"><a href=""><img
                                                src="images/photos/user3.png" alt=""/></a>
                                        </div>
                                        <div class="desc">
                                            <h5><a href="">Weno Carasbong (@wenocar)</a>
                                            </h5>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="thumb"><a href=""><img
                                                src="images/photos/user4.png" alt=""/></a>
                                        </div>
                                        <div class="desc">
                                            <h5><a href="">Nusja Nawancali (@nusja)</a>
                                            </h5>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="thumb"><a href=""><img
                                                src="images/photos/user5.png" alt=""/></a>
                                        </div>
                                        <div class="desc">
                                            <h5><a href="">Lane Kitmari
                                                (@lane_kitmare)</a></h5>
                                        </div>
                                    </li>
                                    <li class="new"><a href="">See All Users</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group">
                            <button class="btn btn-default dropdown-toggle tp-icon"
                                    data-toggle="dropdown">
                                <i class="glyphicon glyphicon-envelope"></i>
                                <span class="badge">1</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-head pull-right">
                                <h5 class="title">You Have 1 New Message</h5>
                                <ul class="dropdown-list gen-list">
                                    <li class="new">
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user1.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Draniem Daamul <span
                                  class="badge badge-success">new</span></span>
                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                        </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user2.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Nusja Nawancali</span>
                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                        </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user3.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Weno Carasbong</span>
                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                        </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user4.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Zaham Sindilmaca</span>
                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                        </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user5.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Veno Leongal</span>
                          <span class="msg">Lorem ipsum dolor sit amet...</span>
                        </span>
                                        </a>
                                    </li>
                                    <li class="new"><a href="">Read All Messages</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group">
                            <button class="btn btn-default dropdown-toggle tp-icon"
                                    data-toggle="dropdown">
                                <i class="glyphicon glyphicon-globe"></i>
                                <span class="badge">5</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-head pull-right">
                                <h5 class="title">You Have 5 New Notifications</h5>
                                <ul class="dropdown-list gen-list">
                                    <li class="new">
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user4.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Zaham Sindilmaca <span
                                  class="badge badge-success">new</span></span>
                          <span class="msg">is now following you</span>
                        </span>
                                        </a>
                                    </li>
                                    <li class="new">
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user5.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Weno Carasbong <span
                                  class="badge badge-success">new</span></span>
                          <span class="msg">is now following you</span>
                        </span>
                                        </a>
                                    </li>
                                    <li class="new">
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user3.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Veno Leongal <span
                                  class="badge badge-success">new</span></span>
                          <span class="msg">likes your recent status</span>
                        </span>
                                        </a>
                                    </li>
                                    <li class="new">
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user3.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Nusja Nawancali <span
                                  class="badge badge-success">new</span></span>
                          <span class="msg">downloaded your work</span>
                        </span>
                                        </a>
                                    </li>
                                    <li class="new">
                                        <a href="">
                                            <span class="thumb"><img
                                                    src="images/photos/user3.png" alt=""/></span>
                                            <span class="desc">
                          <span class="name">Nusja Nawancali <span
                                  class="badge badge-success">new</span></span>
                          <span class="msg">send you 2 messages</span>
                        </span>
                                        </a>
                                    </li>
                                    <li class="new"><a href="">See All Notifications</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle"
                                    data-toggle="dropdown">
                                <img src="images/photos/loggeduser.png" alt=""/>
                                John Doe
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                                <li><a href="profile.html"><i
                                        class="glyphicon glyphicon-user"></i> My
                                    Profile</a></li>
                                <li><a href="#"><i class="glyphicon glyphicon-cog"></i>
                                    Account Settings</a></li>
                                <li><a href="#"><i
                                        class="glyphicon glyphicon-question-sign"></i>
                                    Help</a></li>
                                <li><a href="signin.html"><i
                                        class="glyphicon glyphicon-log-out"></i> Log
                                    Out</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <button id="chatview" class="btn btn-default tp-icon chat-icon">
                            <i class="glyphicon glyphicon-comment"></i>
                        </button>
                    </li>
                </ul>
            </div><!-- header-right -->

        </div><!-- headerbar -->

        <div class="pageheader">
            <h2><i class="fa fa-table"></i> Tables <span>Subtitle goes here...</span></h2>
            <div class="breadcrumb-wrapper">
                <span class="label">You are here:</span>
                <ol class="breadcrumb">
                    <li><a href="index.html">Bracket</a></li>
                    <li class="active">Tables</li>
                </ol>
            </div>
        </div>
        <!-- iframe -->
        <div class="contentpanel">
            <iframe src="../signin.jsp" height="1000px" name="iframe_a" id="myiframe"
                    width="100%"
                    scrolling="no"
                    onload="changeFrameHeight()" frameborder="0">

            </iframe>
        </div>


    </div><!-- mainpanel -->


</section>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toggles.min.js"></script>
<script src="js/retina.min.js"></script>
<script src="js/jquery.cookies.js"></script>
<script src="js/custom.js"></script>
<script>
    function changeFrameHeight() {
        var ifm= document.getElementById("myiframe");
        ifm.height=document.documentElement.clientHeight;

    }

    window.onresize = function () {
        changeFrameHeight();

    }</script>
</body>
</html>
