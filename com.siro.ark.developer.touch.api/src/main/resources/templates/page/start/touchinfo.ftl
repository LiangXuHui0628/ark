<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>欢迎页</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
</head>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">介绍</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <div style="text-indent: 2em;">
                <p>
                    移动金融作为公司产品的一个发展方向，目前已经迭代研发到了第二个版本，基于已有的产品体系，扩展研发touch版本的产品。服务端依托于现有的efs，客户端研发独立的Android版本，IDE使用efs3.0做开发。
                </p>
                <p>
                    简单介绍下这两个版本，初代版本同样式基于efs平台研发，IDE开发交易界面及业务逻辑，上传至服务端，Android客户端访问服务端，更新客户端资源（主要为图片），界面为实时请求服务端返回js在客户端展示。
                    这个版本的界面是通过Sencha Touch库进行创建，后期更具业务需求又增加了客户端本地解析交易，生成Sencha Touch类库支持的js，不需要从服务端实时请求界面，以这种方式实现离线交易的开发。
                </p>
                <p>
                    第二版本是基于初代版本解析本地交易的想法，直接解析交易生成原生Android的UI。
                </p>
            </div>

            <div >
                <img style="width: 900px;" src="${base}/img/api/proIntroduce/appInfo.jpeg">
            </div>

        </div>
    </div>
</div>

<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>