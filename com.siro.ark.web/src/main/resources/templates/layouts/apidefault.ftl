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
            <li class="layui-nav-item <#if userCenter??> <#if userCenter=="userCenter">layui-this</#if> </#if>">
                <a href="${rc.contextPath}/user/center">
                    <img src="${rc.contextPath}/img/user.png" class="layui-nav-img">
                    ${user.username}
                </a>
            </li>
            <li class="layui-nav-item"><a href="${rc.contextPath}/logout">退出</a></li>
        </ul>
    </div>

<div>
    <div class="layui-side" style="left: 300px; top: 150px;">
        <div class="layui-side-scroll">
            <!-- 左侧子菜单 -->
            <ul class="layui-nav layui-nav-tree site-demo-table-nav layui-nav-ark" style="border-radius: 0px;background-color: white;" lay-filter="left_nav">
                <hr>
                <li class="layui-nav-item <#if menu??> <#if menu=="touchinfo">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/start/touchinfo" >介绍</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="proIntroduce">layui-this</#if> </#if>">
                    <a  href="${rc.contextPath}/page/start/proIntroduce" >开始</a>
                </li>
                <hr>
                <li class="layui-nav-item <#if menu??> <#if menu=="panelexpand">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/panelexpand">面板扩展<span class="layui-badge-dot"></span></a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="dateexpand">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/dateexpand">日期扩展<span class="layui-badge-dot"></span></a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="numberexpand">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/numberexpand">数字扩展<span class="layui-badge-dot"></span></a>
                </li>
                <hr>
                <li class="layui-nav-item <#if menu??> <#if menu=="opentradeapi">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/opentradeapi">打开交易<span class="layui-badge-dot"></span></a>
                </li>

                <li class="layui-nav-item <#if menu??> <#if menu=="picandvideo">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/picandvideo">拍照录像</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="signatureapi">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/signatureapi">电子签名</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="deviceapi">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/deviceapi">背夹</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="printerapi">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/printerapi">打印机</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="gpsapi">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/gpsapi">GPS位置</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="listenerapi">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/listenerapi">监听注册</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="serverreqapi">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/serverreqapi">通讯请求<span class="layui-badge-dot"></span></a>
                </li>
                <hr>
                <li class="layui-nav-item <#if menu??> <#if menu=="supportStyle">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/supportStyle">样式定义</a>
                </li>
                <li class="layui-nav-item <#if menu??> <#if menu=="colorAppendix">layui-this</#if> </#if>">
                    <a href="${rc.contextPath}/page/api/colorAppendix">颜色附录</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body" style="left: 560px; height: 95%;width: 60%; ">
        <!-- 内容主体区域 -->
        <sitemesh:write property='body'/>
    </div>
</div>
</div>


<script>
    layui.use('element', function(){
        var element = layui.element;
    });
</script>

<sitemesh:write property='ark'/>

</body>

</html>
