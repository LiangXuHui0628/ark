<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
</head>
<body>


<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">颜色说明</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">简绍</a></legend></fieldset>
            <p>
                颜色和不透明度 (alpha) 值以十六进制表示法表示。任何一种颜色的值范围都是 0 到 255（00 到 ff）。对于 alpha，00 表示完全透明，ff 表示完全不透明。表达式顺序是“aabbggrr”，其中“aa=alpha”（00 到 ff）；“bb=blue”（00 到 ff）；“gg=green”（00 到 ff)；“rr=red”（00 到 ff）。例如，如果您希望对某叠加层应用不透明度为 50% 的蓝色，则应指定以下值：7fff0000
            </p>
            <h2>不透明度16进制值</h2>
            <div style="width: 50% ;">
                <table border="0" cellpadding="2" cellspacing="0" style="border-collapse: collapse;">
                    <thead>
                    <tr>
                        <th align="center">不透明度</th>
                        <th align="center">16进制值</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td scope="row">100%</td>
                        <td>FF</td>
                    </tr>
                    <tr>
                        <td scope="row">95%</td>
                        <td>F2</td>
                    </tr>
                    <tr>
                        <td scope="row">90%</td>
                        <td>E6</td>
                    </tr>
                    <tr>
                        <td scope="row">85%</td>
                        <td>D9</td>
                    </tr>
                    <tr>
                        <td scope="row">80%</td>
                        <td>CC</td>
                    </tr>
                    <tr>
                        <td scope="row">75%</td>
                        <td>BF</td>
                    </tr>
                    <tr>
                        <td scope="row">70%</td>
                        <td>B3</td>
                    </tr>
                    <tr>
                        <td scope="row">65%</td>
                        <td>A6</td>
                    </tr>
                    <tr>
                        <td scope="row">60%</td>
                        <td>99</td>
                    </tr>
                    <tr>
                        <td scope="row">55%</td>
                        <td>8C</td>
                    </tr>
                    <tr>
                        <td scope="row">50%</td>
                        <td>80</td>
                    </tr>
                    <tr>
                        <td scope="row">45%</td>
                        <td>73</td>
                    </tr>
                    <tr>
                        <td scope="row">40%</td>
                        <td>66</td>
                    </tr>
                    <tr>
                        <td scope="row">35%</td>
                        <td>59</td>
                    </tr>
                    <tr>
                        <td scope="row">30%</td>
                        <td>4D</td>
                    </tr>
                    <tr>
                        <td scope="row">25%</td>
                        <td>40</td>
                    </tr>
                    <tr>
                        <td scope="row">20%</td>
                        <td>33</td>
                    </tr>
                    <tr>
                        <td scope="row">15%</td>
                        <td>26</td>
                    </tr>
                    <tr>
                        <td scope="row">10%</td>
                        <td>1A</td>
                    </tr>
                    <tr>
                        <td scope="row">5%</td>
                        <td>0D</td>
                    </tr>
                    <tr>
                        <td scope="row">0%</td>
                        <td>00</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div style="color: red;">
                注意：IDE开发交易容易多个panel重叠，一定会发生设置了透明度不起作用，如多个panel叠层，请设置全透明#00000000
            </div>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在Json样式文件中设置40%透明，如下：</p>
            <pre class="layui-code" lay-title="Json" lay-skin="">
 {
	"text_style":[{
				"name": "background",
				"type": "color",
				"value": "#66000000"
			}]
}
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