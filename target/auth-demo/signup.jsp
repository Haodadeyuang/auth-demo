<%--
  Created by IntelliJ IDEA.
  User: Haodadeyu
  Date: 2020/10/25
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="resources/images/favicon.png" type="image/png">

    <title>Dayu</title>

    <link href="resources/css/style.default.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="resources/js/html5shiv.js"></script>
    <script src="resources/js/respond.min.js"></script>
    <script src="resources/js/check/checkRegister.js"></script>
    <![endif]-->
</head>

<body class="signin">
<section>

    <div class="signuppanel">
        <div class="row">
            <div class="col-md-6">

                <div class="signup-info">

                    <div class="logopanel">
                        <h1><span>[</span> Dayu <span>]</span></h1>
                    </div><!-- logopanel -->

                    <div class="mb20"></div>
                    <p>现在就注册加入Dayu博客系统吧.</p>
                    <p>我们会提供：</p>
                    <div class="mb20"></div>

                    <div class="feat-list">
                        <i class="fa fa-wrench"></i>
                        <h4 class="text-success">个人展示</h4>
                        <p>您可以随时将您的自我介绍展示给别人，以此寻找志同道合的朋友</p>
                    </div>

                    <div class="feat-list">
                        <i class="fa fa-compress"></i>
                        <h4 class="text-success">博客管理</h4>
                        <p>每一篇由您精心编写的博客都可供网络上其它人浏览，让更多人听到您的声音</p>
                    </div>

                    <div class="feat-list mb20">
                        <i class="fa fa-search-plus"></i>
                        <h4 class="text-success">好友交互</h4>
                        <p>以双向关注为基础的好友交互系统</p>
                    </div>

                    <h4 class="mb20">以及更多功能将会在后续版本中推出</h4>
                    <p class="mt5 mb20">已经拥有帐号了? <a
                            href="signin.jsp"><strong>立刻登录</strong></a></p>
                </div><!-- signup-info -->

            </div><!-- col-sm-6 -->

            <div class="col-md-6">

                <form method="post" action="/checkRegister" onsubmit="
                return verityForm()">
                    <div id="myAlert" class="alert alert-warning"
                         style="visibility:hidden;">
                        用户名<strong>已存在或含有敏感词汇</strong>，请重新选择其它用户名。
                    </div>
                    <label class="control-label">姓氏名字</label>
                    <div class="row mb10">
                        <div class="col-sm-6">
                            <input type="text" name="firstname" class="form-control"
                                   placeholder="姓氏"/>
                        </div>
                        <div class="col-sm-6">
                            <input type="text" name="lastname" class="form-control"
                                   placeholder="名字"/>
                        </div>
                    </div>

                    <div class="mb10">
                        <label class="control-label">用户名</label>
                        <input name="name" id="regName" type="text" autocomplete="off"
                               onblur="checkUserName()" class="form-control"/>
                    </div>

                    <div class="mb10">
                        <label class="control-label">密码</label>
                        <input id="regPassword" name="password" type="password"
                               autocomplete="off"
                               class="form-control"/>
                    </div>

                    <div class="mb10">
                        <label class="control-label">重复密码</label>
                        <input id="regPasswordRetype" name="passwordRetype"
                               type="password"
                               placeholder="请再重复输入一次您的密码"
                               onblur="checkRetype()"
                               autocomplete="off"
                               class="form-control"/>
                    </div>



                    <div class="mb10">
                        <label class="control-label">邮箱地址</label>
                        <input id="regEmail" value="" name="email" type="text"
                               autocomplete="off"
                               onblur="check_email(this.value)" class="form-control"/>
                    </div>

                    <div class="mb10">
                        <label class="control-label">所在省市</label>
                        <select name="address" class="select2-2"
                                data-placeholder="所在地">
                            <option value=""></option>
                            <option value="北京 北京">北京</option>
                            <option value="朝阳 北京">朝阳</option>
                            <option value="顺义 北京">顺义</option>
                            <option value="怀柔 北京">怀柔</option>
                            <option value="通州 北京">通州</option>
                            <option value="昌平 北京">昌平</option>
                            <option value="延庆 北京">延庆</option>
                            <option value="丰台 北京">丰台</option>
                            <option value="石景山 北京">石景山</option>
                            <option value="大兴 北京">大兴</option>
                            <option value="房山 北京">房山</option>
                            <option value="密云 北京">密云</option>
                            <option value="门头沟 北京">门头沟</option>
                            <option value="平谷 北京">平谷</option>
                            <option value="八达岭 北京">八达岭</option>
                            <option value="佛爷顶 北京">佛爷顶</option>
                            <option value="汤河口 北京">汤河口</option>
                            <option value="密云上甸子 北京">密云上甸子</option>
                            <option value="斋堂 北京">斋堂</option>
                            <option value="霞云岭 北京">霞云岭</option>
                            <option value="北京城区 北京">北京城区</option>
                            <option value="海淀 北京">海淀</option>
                            <option value="天津 天津市">天津</option>
                            <option value="宝坻 天津市">宝坻</option>
                            <option value="东丽 天津市">东丽</option>
                            <option value="西青 天津市">西青</option>
                            <option value="北辰 天津市">北辰</option>
                            <option value="蓟县 天津市">蓟县</option>
                            <option value="汉沽 天津市">汉沽</option>
                            <option value="静海 天津市">静海</option>
                            <option value="津南 天津市">津南</option>
                            <option value="塘沽 天津市">塘沽</option>
                            <option value="大港 天津市">大港</option>
                            <option value="武清 天津市">武清</option>
                            <option value="宁河 天津市">宁河</option>
                            <option value="上海 上海">上海</option>
                            <option value="宝山 上海">宝山</option>
                            <option value="嘉定 上海">嘉定</option>
                            <option value="南汇 上海">南汇</option>
                            <option value="浦东 上海">浦东</option>
                            <option value="青浦 上海">青浦</option>
                            <option value="松江 上海">松江</option>
                            <option value="奉贤 上海">奉贤</option>
                            <option value="崇明 上海">崇明</option>
                            <option value="徐家汇 上海">徐家汇</option>
                            <option value="闵行 上海">闵行</option>
                            <option value="金山 上海">金山</option>
                            <option value="石家庄 河北">石家庄</option>
                            <option value="张家口 河北">张家口</option>
                            <option value="承德 河北">承德</option>
                            <option value="唐山 河北">唐山</option>
                            <option value="秦皇岛 河北">秦皇岛</option>
                            <option value="沧州 河北">沧州</option>
                            <option value="衡水 河北">衡水</option>
                            <option value="邢台 河北">邢台</option>
                            <option value="邯郸 河北">邯郸</option>
                            <option value="保定 河北">保定</option>
                            <option value="廊坊 河北">廊坊</option>
                            <option value="郑州 河南">郑州</option>
                            <option value="新乡 河南">新乡</option>
                            <option value="许昌 河南">许昌</option>
                            <option value="平顶山 河南">平顶山</option>
                            <option value="信阳 河南">信阳</option>
                            <option value="南阳 河南">南阳</option>
                            <option value="开封 河南">开封</option>
                            <option value="洛阳 河南">洛阳</option>
                            <option value="商丘 河南">商丘</option>
                            <option value="焦作 河南">焦作</option>
                            <option value="鹤壁 河南">鹤壁</option>
                            <option value="濮阳 河南">濮阳</option>
                            <option value="周口 河南">周口</option>
                            <option value="漯河 河南">漯河</option>
                            <option value="驻马店 河南">驻马店</option>
                            <option value="三门峡 河南">三门峡</option>
                            <option value="济源 河南">济源</option>
                            <option value="安阳 河南">安阳</option>
                            <option value="合肥 安徽">合肥</option>
                            <option value="芜湖 安徽">芜湖</option>
                            <option value="淮南 安徽">淮南</option>
                            <option value="马鞍山 安徽">马鞍山</option>
                            <option value="安庆 安徽">安庆</option>
                            <option value="宿州 安徽">宿州</option>
                            <option value="阜阳 安徽">阜阳</option>
                            <option value="亳州 安徽">亳州</option>
                            <option value="黄山 安徽">黄山</option>
                            <option value="滁州 安徽">滁州</option>
                            <option value="淮北 安徽">淮北</option>
                            <option value="铜陵 安徽">铜陵</option>
                            <option value="宣城 安徽">宣城</option>
                            <option value="六安 安徽">六安</option>
                            <option value="巢湖 安徽">巢湖</option>
                            <option value="池州 安徽">池州</option>
                            <option value="蚌埠 安徽">蚌埠</option>
                            <option value="杭州 浙江">杭州</option>
                            <option value="舟山 浙江">舟山</option>
                            <option value="湖州 浙江">湖州</option>
                            <option value="嘉兴 浙江">嘉兴</option>
                            <option value="金华 浙江">金华</option>
                            <option value="绍兴 浙江">绍兴</option>
                            <option value="台州 浙江">台州</option>
                            <option value="温州 浙江">温州</option>
                            <option value="丽水 浙江">丽水</option>
                            <option value="衢州 浙江">衢州</option>
                            <option value="宁波 浙江">宁波</option>
                            <option value="重庆 重庆">重庆</option>
                            <option value="合川 重庆">合川</option>
                            <option value="南川 重庆">南川</option>
                            <option value="江津 重庆">江津</option>
                            <option value="万盛 重庆">万盛</option>
                            <option value="渝北 重庆">渝北</option>
                            <option value="北碚 重庆">北碚</option>
                            <option value="巴南 重庆">巴南</option>
                            <option value="长寿 重庆">长寿</option>
                            <option value="黔江 重庆">黔江</option>
                            <option value="万州天城 重庆">万州天城</option>
                            <option value="万州龙宝 重庆">万州龙宝</option>
                            <option value="涪陵 重庆">涪陵</option>
                            <option value="开县 重庆">开县</option>
                            <option value="城口 重庆">城口</option>
                            <option value="云阳 重庆">云阳</option>
                            <option value="巫溪 重庆">巫溪</option>
                            <option value="奉节 重庆">奉节</option>
                            <option value="巫山 重庆">巫山</option>
                            <option value="潼南 重庆">潼南</option>
                            <option value="垫江 重庆">垫江</option>
                            <option value="梁平 重庆">梁平</option>
                            <option value="忠县 重庆">忠县</option>
                            <option value="石柱 重庆">石柱</option>
                            <option value="大足 重庆">大足</option>
                            <option value="荣昌 重庆">荣昌</option>
                            <option value="铜梁 重庆">铜梁</option>
                            <option value="璧山 重庆">璧山</option>
                            <option value="丰都 重庆">丰都</option>
                            <option value="武隆 重庆">武隆</option>
                            <option value="彭水 重庆">彭水</option>
                            <option value="綦江 重庆">綦江</option>
                            <option value="酉阳 重庆">酉阳</option>
                            <option value="秀山 重庆">秀山</option>
                            <option value="沙坪坝 重庆">沙坪坝</option>
                            <option value="永川 重庆">永川</option>
                            <option value="福州 福建">福州</option>
                            <option value="泉州 福建">泉州</option>
                            <option value="漳州 福建">漳州</option>
                            <option value="龙岩 福建">龙岩</option>
                            <option value="晋江 福建">晋江</option>
                            <option value="南平 福建">南平</option>
                            <option value="厦门 福建">厦门</option>
                            <option value="宁德 福建">宁德</option>
                            <option value="莆田 福建">莆田</option>
                            <option value="三明 福建">三明</option>
                            <option value="兰州 甘肃">兰州</option>
                            <option value="平凉 甘肃">平凉</option>
                            <option value="庆阳 甘肃">庆阳</option>
                            <option value="武威 甘肃">武威</option>
                            <option value="金昌 甘肃">金昌</option>
                            <option value="嘉峪关 甘肃">嘉峪关</option>
                            <option value="酒泉 甘肃">酒泉</option>
                            <option value="天水 甘肃">天水</option>
                            <option value="武都 甘肃">武都</option>
                            <option value="临夏 甘肃">临夏</option>
                            <option value="合作 甘肃">合作</option>
                            <option value="白银 甘肃">白银</option>
                            <option value="定西 甘肃">定西</option>
                            <option value="张掖 甘肃">张掖</option>
                            <option value="广州 广东">广州</option>
                            <option value="惠州 广东">惠州</option>
                            <option value="梅州 广东">梅州</option>
                            <option value="汕头 广东">汕头</option>
                            <option value="深圳 广东">深圳</option>
                            <option value="珠海 广东">珠海</option>
                            <option value="佛山 广东">佛山</option>
                            <option value="肇庆 广东">肇庆</option>
                            <option value="湛江 广东">湛江</option>
                            <option value="江门 广东">江门</option>
                            <option value="河源 广东">河源</option>
                            <option value="清远 广东">清远</option>
                            <option value="云浮 广东">云浮</option>
                            <option value="潮州 广东">潮州</option>
                            <option value="东莞 广东">东莞</option>
                            <option value="中山 广东">中山</option>
                            <option value="阳江 广东">阳江</option>
                            <option value="揭阳 广东">揭阳</option>
                            <option value="茂名 广东">茂名</option>
                            <option value="汕尾 广东">汕尾</option>
                            <option value="韶关 广东">韶关</option>
                            <option value="南宁 广西">南宁</option>
                            <option value="柳州 广西">柳州</option>
                            <option value="来宾 广西">来宾</option>
                            <option value="桂林 广西">桂林</option>
                            <option value="梧州 广西">梧州</option>
                            <option value="防城港 广西">防城港</option>
                            <option value="贵港 广西">贵港</option>
                            <option value="玉林 广西">玉林</option>
                            <option value="百色 广西">百色</option>
                            <option value="钦州 广西">钦州</option>
                            <option value="河池 广西">河池</option>
                            <option value="北海 广西">北海</option>
                            <option value="崇左 广西">崇左</option>
                            <option value="贺州 广西">贺州</option>
                            <option value="贵阳 贵州">贵阳</option>
                            <option value="安顺 贵州">安顺</option>
                            <option value="都匀 贵州">都匀</option>
                            <option value="兴义 贵州">兴义</option>
                            <option value="铜仁 贵州">铜仁</option>
                            <option value="毕节 贵州">毕节</option>
                            <option value="六盘水 贵州">六盘水</option>
                            <option value="遵义 贵州">遵义</option>
                            <option value="凯里 贵州">凯里</option>
                            <option value="昆明 云南">昆明</option>
                            <option value="红河 云南">红河</option>
                            <option value="文山 云南">文山</option>
                            <option value="玉溪 云南">玉溪</option>
                            <option value="楚雄 云南">楚雄</option>
                            <option value="普洱 云南">普洱</option>
                            <option value="昭通 云南">昭通</option>
                            <option value="临沧 云南">临沧</option>
                            <option value="怒江 云南">怒江</option>
                            <option value="香格里拉 云南">香格里拉</option>
                            <option value="丽江 云南">丽江</option>
                            <option value="德宏 云南">德宏</option>
                            <option value="景洪 云南">景洪</option>
                            <option value="大理 云南">大理</option>
                            <option value="曲靖 云南">曲靖</option>
                            <option value="保山 云南">保山</option>
                            <option value="呼和浩特 内蒙古">呼和浩特</option>
                            <option value="乌海 内蒙古">乌海</option>
                            <option value="集宁 内蒙古">集宁</option>
                            <option value="通辽 内蒙古">通辽</option>
                            <option value="阿拉善左旗 内蒙古">阿拉善左旗</option>
                            <option value="鄂尔多斯 内蒙古">鄂尔多斯</option>
                            <option value="临河 内蒙古">临河</option>
                            <option value="锡林浩特 内蒙古">锡林浩特</option>
                            <option value="呼伦贝尔 内蒙古">呼伦贝尔</option>
                            <option value="乌兰浩特 内蒙古">乌兰浩特</option>
                            <option value="包头 内蒙古">包头</option>
                            <option value="赤峰 内蒙古">赤峰</option>
                            <option value="南昌 江西">南昌</option>
                            <option value="上饶 江西">上饶</option>
                            <option value="抚州 江西">抚州</option>
                            <option value="宜春 江西">宜春</option>
                            <option value="鹰潭 江西">鹰潭</option>
                            <option value="赣州 江西">赣州</option>
                            <option value="景德镇 江西">景德镇</option>
                            <option value="萍乡 江西">萍乡</option>
                            <option value="新余 江西">新余</option>
                            <option value="九江 江西">九江</option>
                            <option value="吉安 江西">吉安</option>
                            <option value="武汉 湖北">武汉</option>
                            <option value="黄冈 湖北">黄冈</option>
                            <option value="荆州 湖北">荆州</option>
                            <option value="宜昌 湖北">宜昌</option>
                            <option value="恩施 湖北">恩施</option>
                            <option value="十堰 湖北">十堰</option>
                            <option value="神农架 湖北">神农架</option>
                            <option value="随州 湖北">随州</option>
                            <option value="荆门 湖北">荆门</option>
                            <option value="天门 湖北">天门</option>
                            <option value="仙桃 湖北">仙桃</option>
                            <option value="潜江 湖北">潜江</option>
                            <option value="襄樊 湖北">襄樊</option>
                            <option value="鄂州 湖北">鄂州</option>
                            <option value="孝感 湖北">孝感</option>
                            <option value="黄石 湖北">黄石</option>
                            <option value="咸宁 湖北">咸宁</option>
                            <option value="成都 四川">成都</option>
                            <option value="自贡 四川">自贡</option>
                            <option value="绵阳 四川">绵阳</option>
                            <option value="南充 四川">南充</option>
                            <option value="达州 四川">达州</option>
                            <option value="遂宁 四川">遂宁</option>
                            <option value="广安 四川">广安</option>
                            <option value="巴中 四川">巴中</option>
                            <option value="泸州 四川">泸州</option>
                            <option value="宜宾 四川">宜宾</option>
                            <option value="内江 四川">内江</option>
                            <option value="资阳 四川">资阳</option>
                            <option value="乐山 四川">乐山</option>
                            <option value="眉山 四川">眉山</option>
                            <option value="凉山 四川">凉山</option>
                            <option value="雅安 四川">雅安</option>
                            <option value="甘孜 四川">甘孜</option>
                            <option value="阿坝 四川">阿坝</option>
                            <option value="德阳 四川">德阳</option>
                            <option value="广元 四川">广元</option>
                            <option value="攀枝花 四川">攀枝花</option>
                            <option value="银川 宁夏">银川</option>
                            <option value="中卫 宁夏">中卫</option>
                            <option value="固原 宁夏">固原</option>
                            <option value="石嘴山 宁夏">石嘴山</option>
                            <option value="吴忠 宁夏">吴忠</option>
                            <option value="西宁 青海省">西宁</option>
                            <option value="黄南 青海省">黄南</option>
                            <option value="海北 青海省">海北</option>
                            <option value="果洛 青海省">果洛</option>
                            <option value="玉树 青海省">玉树</option>
                            <option value="海西 青海省">海西</option>
                            <option value="海东 青海省">海东</option>
                            <option value="海南 青海省">海南</option>
                            <option value="济南 山东">济南</option>
                            <option value="潍坊 山东">潍坊</option>
                            <option value="临沂 山东">临沂</option>
                            <option value="菏泽 山东">菏泽</option>
                            <option value="滨州 山东">滨州</option>
                            <option value="东营 山东">东营</option>
                            <option value="威海 山东">威海</option>
                            <option value="枣庄 山东">枣庄</option>
                            <option value="日照 山东">日照</option>
                            <option value="莱芜 山东">莱芜</option>
                            <option value="聊城 山东">聊城</option>
                            <option value="青岛 山东">青岛</option>
                            <option value="淄博 山东">淄博</option>
                            <option value="德州 山东">德州</option>
                            <option value="烟台 山东">烟台</option>
                            <option value="济宁 山东">济宁</option>
                            <option value="泰安 山东">泰安</option>
                            <option value="西安 陕西省">西安</option>
                            <option value="延安 陕西省">延安</option>
                            <option value="榆林 陕西省">榆林</option>
                            <option value="铜川 陕西省">铜川</option>
                            <option value="商洛 陕西省">商洛</option>
                            <option value="安康 陕西省">安康</option>
                            <option value="汉中 陕西省">汉中</option>
                            <option value="宝鸡 陕西省">宝鸡</option>
                            <option value="咸阳 陕西省">咸阳</option>
                            <option value="渭南 陕西省">渭南</option>
                            <option value="太原 山西">太原</option>
                            <option value="临汾 山西">临汾</option>
                            <option value="运城 山西">运城</option>
                            <option value="朔州 山西">朔州</option>
                            <option value="忻州 山西">忻州</option>
                            <option value="长治 山西">长治</option>
                            <option value="大同 山西">大同</option>
                            <option value="阳泉 山西">阳泉</option>
                            <option value="晋中 山西">晋中</option>
                            <option value="晋城 山西">晋城</option>
                            <option value="吕梁 山西">吕梁</option>
                            <option value="乌鲁木齐 新疆">乌鲁木齐</option>
                            <option value="石河子 新疆">石河子</option>
                            <option value="昌吉 新疆">昌吉</option>
                            <option value="吐鲁番 新疆">吐鲁番</option>
                            <option value="库尔勒 新疆">库尔勒</option>
                            <option value="阿拉尔 新疆">阿拉尔</option>
                            <option value="阿克苏 新疆">阿克苏</option>
                            <option value="喀什 新疆">喀什</option>
                            <option value="伊宁 新疆">伊宁</option>
                            <option value="塔城 新疆">塔城</option>
                            <option value="哈密 新疆">哈密</option>
                            <option value="和田 新疆">和田</option>
                            <option value="阿勒泰 新疆">阿勒泰</option>
                            <option value="阿图什 新疆">阿图什</option>
                            <option value="博乐 新疆">博乐</option>
                            <option value="克拉玛依 新疆">克拉玛依</option>
                            <option value="拉萨 西藏">拉萨</option>
                            <option value="山南 西藏">山南</option>
                            <option value="阿里 西藏">阿里</option>
                            <option value="昌都 西藏">昌都</option>
                            <option value="那曲 西藏">那曲</option>
                            <option value="日喀则 西藏">日喀则</option>
                            <option value="林芝 西藏">林芝</option>
                            <option value="台北县 台湾">台北县</option>
                            <option value="高雄 台湾">高雄</option>
                            <option value="台中 台湾">台中</option>
                            <option value="海口 海南省">海口</option>
                            <option value="三亚 海南省">三亚</option>
                            <option value="东方 海南省">东方</option>
                            <option value="临高 海南省">临高</option>
                            <option value="澄迈 海南省">澄迈</option>
                            <option value="儋州 海南省">儋州</option>
                            <option value="昌江 海南省">昌江</option>
                            <option value="白沙 海南省">白沙</option>
                            <option value="琼中 海南省">琼中</option>
                            <option value="定安 海南省">定安</option>
                            <option value="屯昌 海南省">屯昌</option>
                            <option value="琼海 海南省">琼海</option>
                            <option value="文昌 海南省">文昌</option>
                            <option value="保亭 海南省">保亭</option>
                            <option value="万宁 海南省">万宁</option>
                            <option value="陵水 海南省">陵水</option>
                            <option value="西沙 海南省">西沙</option>
                            <option value="南沙岛 海南省">南沙岛</option>
                            <option value="乐东 海南省">乐东</option>
                            <option value="五指山 海南省">五指山</option>
                            <option value="琼山 海南省">琼山</option>
                            <option value="长沙 湖南">长沙</option>
                            <option value="株洲 湖南">株洲</option>
                            <option value="衡阳 湖南">衡阳</option>
                            <option value="郴州 湖南">郴州</option>
                            <option value="常德 湖南">常德</option>
                            <option value="益阳 湖南">益阳</option>
                            <option value="娄底 湖南">娄底</option>
                            <option value="邵阳 湖南">邵阳</option>
                            <option value="岳阳 湖南">岳阳</option>
                            <option value="张家界 湖南">张家界</option>
                            <option value="怀化 湖南">怀化</option>
                            <option value="黔阳 湖南">黔阳</option>
                            <option value="永州 湖南">永州</option>
                            <option value="吉首 湖南">吉首</option>
                            <option value="湘潭 湖南">湘潭</option>
                            <option value="南京 江苏">南京</option>
                            <option value="镇江 江苏">镇江</option>
                            <option value="苏州 江苏">苏州</option>
                            <option value="南通 江苏">南通</option>
                            <option value="扬州 江苏">扬州</option>
                            <option value="宿迁 江苏">宿迁</option>
                            <option value="徐州 江苏">徐州</option>
                            <option value="淮安 江苏">淮安</option>
                            <option value="连云港 江苏">连云港</option>
                            <option value="常州 江苏">常州</option>
                            <option value="泰州 江苏">泰州</option>
                            <option value="无锡 江苏">无锡</option>
                            <option value="盐城 江苏">盐城</option>
                            <option value="哈尔滨 黑龙江">哈尔滨</option>
                            <option value="牡丹江 黑龙江">牡丹江</option>
                            <option value="佳木斯 黑龙江">佳木斯</option>
                            <option value="绥化 黑龙江">绥化</option>
                            <option value="黑河 黑龙江">黑河</option>
                            <option value="双鸭山 黑龙江">双鸭山</option>
                            <option value="伊春 黑龙江">伊春</option>
                            <option value="大庆 黑龙江">大庆</option>
                            <option value="七台河 黑龙江">七台河</option>
                            <option value="鸡西 黑龙江">鸡西</option>
                            <option value="鹤岗 黑龙江">鹤岗</option>
                            <option value="齐齐哈尔 黑龙江">齐齐哈尔</option>
                            <option value="大兴安岭 黑龙江">大兴安岭</option>
                            <option value="长春 吉林">长春</option>
                            <option value="延吉 吉林">延吉</option>
                            <option value="四平 吉林">四平</option>
                            <option value="白山 吉林">白山</option>
                            <option value="白城 吉林">白城</option>
                            <option value="辽源 吉林">辽源</option>
                            <option value="松原 吉林">松原</option>
                            <option value="吉林 吉林">吉林</option>
                            <option value="通化 吉林">通化</option>
                            <option value="沈阳 辽宁">沈阳</option>
                            <option value="鞍山 辽宁">鞍山</option>
                            <option value="抚顺 辽宁">抚顺</option>
                            <option value="本溪 辽宁">本溪</option>
                            <option value="丹东 辽宁">丹东</option>
                            <option value="葫芦岛 辽宁">葫芦岛</option>
                            <option value="营口 辽宁">营口</option>
                            <option value="阜新 辽宁">阜新</option>
                            <option value="辽阳 辽宁">辽阳</option>
                            <option value="铁岭 辽宁">铁岭</option>
                            <option value="朝阳 辽宁">朝阳</option>
                            <option value="盘锦 辽宁">盘锦</option>
                            <option value="大连 辽宁">大连</option>
                            <option value="锦州 辽宁">锦州</option>
                        </select>
                    </div>
                    <br/>

                    <button class="btn btn-success btn-block">立刻注册</button>
                </form>
            </div><!-- col-sm-6 -->


        </div><!-- row -->

        <div class="signup-footer">
            <div class="pull-left">

            </div>
            <div class="pull-right">
                Github链接: <a href="https://github.com/Haodadeyuang/auth-demo"
                             target="_blank">My Blog</a>
            </div>
        </div>

    </div><!-- signuppanel -->

</section>
<script src="resources/js/jquery-1.11.1.min.js"></script>
<script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/modernizr.min.js"></script>
<script src="resources/js/jquery.sparkline.min.js"></script>
<script src="resources/js/jquery.cookies.js"></script>
<script src="resources/js/toggles.min.js"></script>
<script src="resources/js/retina.min.js"></script>
<script src="resources/js/select2.min.js"></script>
<script src="resources/js/custom.js"></script>
<script>

    function verityForm() {
        var email = $("#regEmail").val();
        var b1 = check_email(email);
        var b2 = checkRetype();
        var b3 = check_username($("#regName").val());
        var b = b1 && b2 && b3;
        return b;
    }

    function checkRetype() {
        var p1 = $("#regPassword").val();
        var p2 = $("#regPasswordRetype").val();
        if (p1 != p2) {
            alert("两次输入的密码不一致啵");
            return false;
        }
        return true;
    }

    function is_Email(str) {
        var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
        return reg.test(str);
    }

    function check_username(name) {
        if (name.length >= 10) {
            alert("名字太长躲在树后边会被发现噢")
            return false;
        }
        return true;
    }

    function check_email(email) {

        var email_length = email.length;
        if (is_Email(email)) {
            if (email_length > 32) {
                alert("邮箱名过长...");
                return false;
            }
            return true;
        } else {
            alert("邮箱格式非法，请重新输入");
            return false;
        }

    }

    var xmlhttp;
    function checkUserName() {
        var reg_name = document.getElementById("regName").value;
        //兼容性写法创建请求实例,IE5 6支持else里面的方法
        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
        } else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        //设置传送方式,地址,以及同步还是异步
        xmlhttp.open("GET", "/checkUserName?reg_name=" + escape(escape(reg_name)), true);
        xmlhttp.onreadystatechange = callback;//状态改变的时候执行这个函数,用来判断是否请求完毕
        xmlhttp.send();//请求服务器
    }

    /**
     * 用户名检测回调函数
     */

    function setHidden() {
        $("#myAlert").attr("style", "visibility:hidden;");
    }

    function callback() {
        //请求完成表示
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            if (xmlhttp.responseText == "用户名已存在或含有敏感词汇，请更换用户名") {//这里直接判断不为空,应该根据数据库返回值来进行不同的显示
                $("#myAlert").attr("style", "visibility:visible;");
                setTimeout("setHidden()", 2500);
            }
        }
    }
    jQuery(document).ready(function () {

        jQuery(".select2").select2({
            width: '100%',
            minimumResultsForSearch: -1
        });

        jQuery(".select2-2").select2({
            width: '100%'
        });
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
