<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">webSocket</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>实现websocket监听注册，服务端必须启动websocket服务，端口默认：50030</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
* 注册webSocketListener
* @param page
* @param listener
* @throws Exception
*/
public void regWebSocketListener(IPage page, int eventId, IJWebSocketListener listener) throws Exception;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
@ApiMethod(name="添加监听")
public void addListener() throws Exception {
    Log.d("添加监听", "添加监听") ;
    this.app.regWebSocketListener(page, 1, new IJWebSocketListener() {
        @Override
        public void excute(int arg0, Object msg) {
            Log.d("添加监听", msg.toString()) ;
            try {
                JSONObject obj = new JSONObject(msg.toString());
                String hm = obj.getString("userno") ;
                app.toast(page, "您有一笔任务消息待处理。", 5000) ;
            } catch (JSONException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }) ;
}
            </pre>
            <p>前端发送消息到pad登陆的柜员下，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
Endpoints instance = Endpoints.getInstance();
String mes = "{'eventId':1,'data':{'userno':'"+uc.get(system.G_TLRNO)+"','msg':'"+uc.get(system.G_ACCDATE)+"'}}";
instance.sendMessage("81501078", mes);
tradeUtils.openWindow("trx/trade/B001/T2089");
trxUtil.updateTrxLoninfo("1", "000000", "交易成功");
alertSucc("交易成功");
fireFlowEvent("OK");
            </pre>
            <p>pad发出消息java文件代码，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
public void doAuthNotify(){
    Map<String, Object> retmap = this.app.doServerAction("authNotify", null, this);
    String ercode = (String) retmap.get(Common.TOUCH_RET_ERCODE);
    String ermesg = (String) retmap.get(Common.TOUCH_RET_ERMESG);
    if ("000000".equals(ercode)) {
        IPage t0009Page = (IPage) app.getGloable("T0009_PAGE") ;
        try {
            app.closeActivity(t0009Page) ;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
            </pre>
            <p>pad发出消息xxx_Online文件代码，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
@ApiMethod(name = "授权通知")
public void authNotify() throws Exception {
    Endpoints instance = Endpoints.getInstance();
    String msg = "{'eventId':1,'data':{'msg':'授权通过'}}" ;
    instance.sendMessage("888888", msg);
    write("000000", "授权通过") ;
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