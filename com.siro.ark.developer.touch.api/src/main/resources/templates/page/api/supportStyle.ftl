<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>


<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">支持的样式属性</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>以下属性支持在apps.json文件中加载的样式文件中设置</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
			<div class="font_style">no_valid,</div>
	        <div class="font_style">id,</div>
	        <div class="font_style">layout_width,</div>
	        <div class="font_style">layout_height,</div>
	        <div class="font_style">padding_left,</div>
	        <div class="font_style">padding_right,</div>
	        <div class="font_style">padding_top,</div>
	        <div class="font_style">padding_bottom,</div>
	        <div class="font_style">padding,</div>
	        <div class="font_style">layout_marginleft,</div>
	        <div class="font_style">layout_marginright,</div>
	        <div class="font_style">layout_margintop,</div>
	        <div class="font_style">layout_marginbottom,</div>
	        <div class="font_style">layout_margin,</div>
	        <div class="font_style">background,</div>
	        <div class="font_style">enabled,</div>
	        <div class="font_style">selected,</div>
	        <div class="font_style">clickable,</div>
	        <div class="font_style">scalex,</div>
	        <div class="font_style">scaley,</div>
	        <div class="font_style">minwidth,</div>
	        <div class="font_style">minheigth,</div>
	        <div class="font_style">/* textview */</div>
	       <div class="font_style"> text,</div>
	        <div class="font_style">textcolor,</div>
	        <div class="font_style">textsize,</div>
	        <div class="font_style">textstyle,</div>
	        <div class="font_style">ellipsize,</div>
	        <div class="font_style">maxlines,</div>
	        <div class="font_style">gravity,</div>
	        <div class="font_style">drawabletop,</div>
	        <div class="font_style">drawablebottom,</div>
	        <div class="font_style">drawableleft,</div>
	        <div class="font_style">drawableright,</div>
	        <div class="font_style">/* imageview */</div>
	        <div class="font_style">src,</div>
	        <div class="font_style">scaletype,</div>
	        <div class="font_style">adjustviewbounds,</div>
	        <div class="font_style">/* layout */</div>
	        <div class="font_style">layout_above,</div>
	        <div class="font_style">layout_alignbaseline,</div>
	        <div class="font_style">layout_alignbottom,</div>
	        <div class="font_style">layout_alignend,</div>
	        <div class="font_style">layout_alignleft,</div>
	        <div class="font_style">layout_alignparentbottom,</div>
	        <div class="font_style">layout_alignparentend,</div>
	        <div class="font_style">layout_alignparentleft,</div>
	        <div class="font_style">layout_alignparentright,</div>
	        <div class="font_style">layout_alignparentstart,</div>
	        <div class="font_style">layout_alignparenttop,</div>
	        <div class="font_style">layout_alignright,</div>
	        <div class="font_style">layout_alignstart,</div>
	        <div class="font_style">layout_aligntop,</div>
	        <div class="font_style">layout_alignwithparentifmissing,</div>
	        <div class="font_style">layout_below,</div>
	        <div class="font_style">layout_centerhorizontal,</div>
	        <div class="font_style">layout_centerinparent,</div>
	        <div class="font_style">layout_centervertical,</div>
	        <div class="font_style">layout_toendof,</div>
	        <div class="font_style">layout_toleftof,</div>
	        <div class="font_style">layout_torightof,</div>
	        <div class="font_style">layout_tostartof,</div>
	        <div class="font_style">layout_gravity,</div>
	        <div class="font_style">layout_weight,</div>
	        <div class="font_style">sum_weight,</div>
	        <div class="font_style">orientation,</div>
	        <div class="font_style">TopBorder,</div>
	        <div class="font_style">BottomBorder,</div>
	        <div class="font_style">LeftBorder,</div>
	        <div class="font_style">RightBorder,</div>
	        <div class="font_style">borderRadius,</div>
	        <div class="font_style">borderColor,</div>
	        <div class="font_style">borderWidth,</div>
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>常用设置方式，如下：</p>
            <pre class="layui-code" lay-title="Json" lay-skin="">
{
	"pub_btn":[{
				"name": "background",
				"type": "color",
				"value": "#ffffff"
			},{
				"name": "textcolor",
				"type": "color",
				"value": "#1284ff"
			},{
				"name": "textsize",
				"type": "dimen",
				"value": "18sp"
			}],
	"pub_title":[{
			"name": "textcolor",
			"type": "color",
			"value": "#5c5c5c"
		},{
			"name": "textsize",
			"type": "dimen",
			"value": "22sp"
		}],
	"pub_lable":[{
			"name": "textcolor",
			"type": "color",
			"value": "#5c5c5c"
		},{
			"name": "textsize",
			"type": "dimen",
			"value": "16sp"
		}],
	"pub_lable2":[{
			"name": "textcolor",
			"type": "color",
			"value": "#037bff"
		},{
			"name": "textsize",
			"type": "dimen",
			"value": "20sp"
		}],
	"card_item_t0":[{
			"name": "textcolor",
			"type": "color",
			"value": "#1284ff"
		},{
			"name": "textsize",
			"type": "dimen",
			"value": "20sp"
		}],
	"card_item_t1":[{
			"name": "textcolor",
			"type": "color",
			"value": "#54667c"
		},{
			"name": "textsize",
			"type": "dimen",
			"value": "20sp"
		}],
	"card_item_t2":[{
			"name": "textcolor",
			"type": "color",
			"value": "#a8abae"
		},{
			"name": "textsize",
			"type": "dimen",
			"value": "14sp"
		}],
	"card_panel_radius_border":[{
				"name": "borderRadius",
				"value": "10"
			}, {
				"name": "borderWidth",
				"value": "2"
			}, {
				"name": "TopBorder",
				"value": "true"
			},{
				"name": "BottomBorder",
				"value": "true"
			},{
				"name": "LeftBorder",
				"value": "true"
			},{
				"name": "RightBorder",
				"value": "true"
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