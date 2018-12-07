<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>


<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">GPS定位</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>实现GPS定位，设备必须有互联网。如果是连接的vpn，此api不没有记过返回</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 获取GPS位置信息
 * @throws Exception
 */
public void getBDLocation(IBDLocationCallback callback) throws Exception ;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">

            </pre>
            <fieldset><legend><a name="base">结语</a></legend></fieldset>
            <p>无</p>
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