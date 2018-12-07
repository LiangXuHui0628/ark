<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>开始</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
</head>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">IDE工程</li>
        <li class="">Local目录</li>
        <li class="">System目录</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">介绍</a></legend></fieldset>
            <ol>
                <li>Apps为应用所使用的目录，此目录下包括四个固定目录</li>
                <li style="color: red">FrameWork预留目录</li>
                <li style="color: red">Live预留目录</li>
                <li>Local目录为当前版本交易</li>
                <li>System为资源目录</li>
            </ol>
            <div style="height: 238px;width: 382px;">
                <img style="float: left;" height="100%" width="100%" src="${base}/img/api/proIntroduce/projectlist.png">
            </div>

        </div>
		<div class="layui-tab-item">
            <fieldset><legend><a name="base">介绍</a></legend></fieldset>
            <ol>
                <li>Local主要为原生交易界面，以及api处理目录。</li>
                <li>lib[公共方法]存放api调用（原生UI的api处理必须放到这个目录）</li>
                <li>trades存放交易目录。</li>
            </ol>
            <div >
                <img src="${base}/img/api/proIntroduce/localfile.jpeg">
            </div>
            <fieldset><legend><a name="base">交易文件</a></legend></fieldset>
            <ol>
                <li>xxx.java文件上传到服务端执行完diff后，下载到pad上执行的程序。</li>
                <li>xxx_Online.java文件服务端执行程序。</li>
            </ol>
		</div>
		<div class="layui-tab-item">
            <fieldset><legend><a name="base">介绍</a></legend></fieldset>
            <ol>
                <li>System目录为图片资源和样式文件存放位置。</li>
                <li>此目录下，需要根据apk中的渠道号，建立自己的渠道目录。</li>
                <li>渠道目录下需要包含apps.json</li>
            </ol>
            <div class="font_style">样式文件定义,看如下代码：</div>
            <div style="width: 600px;">
		<pre><code class="json">
{
	"submit_but":[{
				"name": "background",
				"type": "color",
				"value": "#1b8cff"
			},{
				"name": "textcolor",
				"type": "color",
				"value": "#ffffff"
			}]
}
		</code></pre>
            </div>
            <div class="font_style">以上代码为设置一个button的背景和文字大小，效果如下：</div>
            <div style="height: 110px;width: 197px;">
                <img style="float: left;" height="100%" width="100%" src="${base}/img/api/proIntroduce/localjsonbut.png">
            </div>
            <div class="font_style">样式的引用位置，如下图：</div>
            <div style="height: 657px;width: 595px;">
                <img style="float: left;" height="100%" width="100%" src="${base}/img/api/proIntroduce/localjsonbutatt.png">
            </div>
            <div class="font_style">关于样式支持的属性，请查看【附录】中的【支持样式】</div>
            <fieldset><legend><a name="base">启动配置文件</a></legend></fieldset>
            <pre class="layui-code" lay-title="Json" lay-skin="">

 {
	"title": "北京兴融移动",				//默认应用名称   不起作用
	"iocn":"/System/resources/img/app/ic_launcher.png",   //默认启动图片  不起作用
	"hasInputBorder":false, 								//输入域边框
	"textSize":18,											//应用字体大小
	"innerTextSize":18,										//输入域内字体大小
	"innerTextColor":"#000000",								//输入域内字体颜色
	"screenOrientation":"landscape",						//横向与纵向应用标志
	"wifiEnabled":true,										//wifi禁用
	"disableScreenShot":true,								//拍照禁用
	"appStyle":["resources/style/background.json",			//加载样式配置文件
				"resources/style/border.json",
				"resources/style/font.json",
				"resources/style/project.json",
				"resources/style/common.json",
				"815/style/B0002/B0002.json",
				"815/style/Dialog/dialog.json",
				"815/style/Button/button.json",
				"815/style/B0006/Hall/hall.json",
				"815/style/B0006/Hall/serviceLog.json",
				"815/style/Text/text.json",
				"815/style/Select/select.json",
				"815/style/Date/date.json",
				"815/style/Timeline/timeline.json",
				"815/style/B0000/B0000.json"
			  ],
	"cmpStyle":{											//默认组件样式
		"button":"button_yellow",
		"text":"text_must_input",
		"label":"",
		"select":"select_must_input",
		"date":"date_must_input"
	},
	"tradeId":"Apps/Local/trades/B0001/T0020/T0020.tface",	//应用打开时，默认加载界面
	"faceConfig":{											//人脸识别配置，已不起作用
		"server":"http://36.0.11.211:9000",
		"id":"user",
		"secret":"12345",
		"faceThreshold":"0.7",
		"liveCount":"3",
		"liveLevel":"1",
		"licence":"MDM1MzEwbm9kZXZpY2Vjd2F1dGhvcml6ZZfn5OXl5+Tq3+bg5efm5ef65OXl4Obg5Yjm5uvl5ubrkeXm5uvl5uai6+Xm5uvl5qTm6+Xm5ufk++bn5uQ="
	},
	"useFinger":"true",										//项目级配置
	"paperlessURL":"http://36.0.0.77:8080/Seal/servlet/SendPdfServlet", //项目级配置
	"debug":"true"											//项目级配置
}
            </pre>


			<p>
				apps.json中项目级配置，在java中获取的方式如下：
			</p>
            <pre class="layui-code" lay-title="java" lay-skin="">
try {
	JSONObject appconfig = app.getAppConfig();
	if (appconfig.has("useFinger")) {
		String useFinger = appconfig.getString("useFinger");
		if (!"true".equals(useFinger)) {
		return "0";
	}
}
} catch (Exception e) {
	e.printStackTrace();
}
			</pre>
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