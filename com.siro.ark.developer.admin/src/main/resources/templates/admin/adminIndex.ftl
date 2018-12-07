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
    <!-- Bootstrap table -->
    <script src="${rc.contextPath}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="${rc.contextPath}/js/ark/datatable.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-nav layui-layout-left default-header-logo-box" style="left: 0px;">
            <img src="${rc.contextPath}/img/siro-logo.jpg" class="layui-nav-img">
            <div class="layui-logo" style="">后台管理</div>
        </div>
        <div class="layui-nav layui-layout-left default-header-logo-box" style="left: 0px;">
            <a href="http://redmine.siro-info.com:3000/" target="_blank">
                <div class="layui-logo" style="">缺陷管理</div>
            </a>
        </div>


        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item <#if userCenter??> <#if userCenter=="userCenter">layui-this</#if> </#if>">
                <a href="${rc.contextPath}/user/center">
                    <img src="${rc.contextPath}/img/usr-head.jpg" class="layui-nav-img">
                    旭辉
                </a>
            </li>
            <li class="layui-nav-item"><a href="${rc.contextPath}/logout">退出</a></li>
        </ul>
    </div>

    <div>
        <div class="layui-side" style="">
            <div class="layui-side-scroll">
                <!-- 左侧子菜单 -->
                <ul class="layui-nav layui-nav-tree site-demo-table-nav layui-nav-ark" style="border-radius: 0px;background-color: white;" lay-filter="left_nav">
                    <hr>
                    <li class="layui-nav-item <#if menu??> <#if menu=="allInfo">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/admin/allInfo" >后台总览</a>
                    </li>
                    <li class="layui-nav-item <#if menu??> <#if menu=="userApprove">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/admin/userApprove" >未认证用户</a>
                    </li>
                    <li class="layui-nav-item <#if menu??> <#if menu=="userManager">layui-this</#if> </#if>">
                        <a  href="${rc.contextPath}/admin/userManager" >用户管理</a>
                    </li>
                    <hr>
                    <li class="layui-nav-item <#if menu??> <#if menu=="picandvideo">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/page/api/picandvideo">项目管理</a>
                    </li>
                    <li class="layui-nav-item <#if menu??> <#if menu=="company">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/admin/company">合作厂商</a>
                    </li>
                    <hr>
                    <li class="layui-nav-item <#if menu??> <#if menu=="versionManager">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/admin/versionManager">版本录入<span class="layui-badge-dot"></span></a>
                    </li>
                    <li class="layui-nav-item <#if menu??> <#if menu=="apkManager">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/admin/apkManager">应用管理<span class="layui-badge-dot"></span></a>
                    </li>
                    <li class="layui-nav-item <#if menu??> <#if menu=="supportStyle">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/page/api/supportStyle">文档管理</a>
                    </li>
                    <li class="layui-nav-item <#if menu??> <#if menu=="colorAppendix">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/page/api/colorAppendix">论坛管理</a>
                    </li>
                    <hr>
                    <li class="layui-nav-item <#if menu??> <#if menu=="opentradeapi">layui-this</#if> </#if>">
                        <a href="${rc.contextPath}/page/api/opentradeapi">实时统计<span class="layui-badge-dot"></span></a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="layui-body" style="">
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
