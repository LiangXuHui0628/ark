<#assign base=rc.contextPath />
<#assign url=rc.requestUri />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>开发者中心 |
        <sitemesh:write property='title'/>
    </title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="ark">
    <meta name="description" content="ark，....">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
    <sitemesh:write property='head'/>
    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico">
    <link href="${rc.contextPath}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${rc.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet"/>
    <link href="${rc.contextPath}/css/animate.css" rel="stylesheet"/>
    <link href="${rc.contextPath}/css/style.css?v=4.1.0" rel="stylesheet"/>
    <link href="${rc.contextPath}/js/plugins/layui/css/layui.css" rel="stylesheet"/>
    <link href="${rc.contextPath}/css/ark.css" rel="stylesheet"/>


    <script src="${rc.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${rc.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>

    <script src="${rc.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${rc.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/layer/layer.min.js"></script>

    <script src="${rc.contextPath}/js/hplus.js?v=4.1.0"></script>
    <script type="text/javascript" src="${rc.contextPath}/js/contabs.js"></script>

    <script src="${rc.contextPath}/js/websocket/sockjs.min.js" type="text/javascript"></script>
    <script src="${rc.contextPath}/js/websocket/stomp.min.js" type="text/javascript"></script>
    <script src="${rc.contextPath}/js/websocket/sliescoket.js" type="text/javascript"></script>

    <script src="${rc.contextPath}/js/plugins/pace/pace.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/layui/layui.js"></script>
    <script src="${rc.contextPath}/js/ark/datatable.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-nav layui-layout-left default-header-logo-box" style="left: 0px;">
            <img src="${rc.contextPath}/img/siro-logo.jpg" class="layui-nav-img">
            <div class="layui-logo" style="margin-left: 50px;">北京兴融信息开发者中心</div>
        </div>

        <!-- 头部区域（可配合layui已有的水平导航） -->
        <div style="margin:auto; width: 450px;">
            <ul class="layui-nav">
                <li class="layui-nav-item <#if itemMenu??> <#if itemMenu=="index">layui-this</#if> </#if>"><a href="${rc.contextPath}/index">首页</a></li>
                <li class="layui-nav-item <#if itemMenu??> <#if itemMenu=="product">layui-this</#if> </#if>"><a href="${rc.contextPath}/product">产品</a></li>
                <li class="layui-nav-item <#if itemMenu??> <#if itemMenu=="study">layui-this</#if> </#if>"><a href="${rc.contextPath}/study">学习</a></li>
                <li class="layui-nav-item <#if itemMenu??> <#if itemMenu=="resources">layui-this</#if> </#if>"><a href="${rc.contextPath}/resources">资源</a></li>
                <li class="layui-nav-item <#if itemMenu??> <#if itemMenu=="support">layui-this</#if> </#if>"><a href="${rc.contextPath}/support">支持</a></li>
                <li class="layui-nav-item <#if itemMenu??> <#if itemMenu=="blog">layui-this</#if> </#if>"><a href="${rc.contextPath}/blog">论坛</a></li>
            </ul>
        </div>

        <ul class="layui-nav layui-layout-right">
            <#if user??>
            <li class="layui-nav-item <#if userCenter??> <#if userCenter=="userCenter">layui-this</#if> </#if>">
                <a href="${rc.contextPath}/user/center">
                    <img src="${rc.contextPath}/img/user.png" class="layui-nav-img">
                    ${user.username}
                </a>
            </li>
            <li class="layui-nav-item"><a href="${rc.contextPath}/logout">退出</a></li>
            <#else>
                <li class="layui-nav-item"><a href="${rc.contextPath}/toLogin">登陆</a></li>
                <li class="layui-nav-item"><a href="${rc.contextPath}/register">注册</a></li>
            </#if>
        </ul>
    </div>


    <div class="layui-body" style="left: 0px; height: 100%;background-color: whitesmoke;">
        <!-- 内容主体区域 -->
        <sitemesh:write property='body'/>
    </div>

</div>



<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>

<sitemesh:write property='ark'/>

</body>

</html>
