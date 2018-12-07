<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">单选组</li>
        <li class="">签字板</li>
        <li class="">地图</li>
        <li class="">数据列表</li>
        <li class="">点聚pdf预览</li>
        <li class="">滑动图片</li>
        <li class="">PDF预览</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">组件设置</a></legend></fieldset>

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