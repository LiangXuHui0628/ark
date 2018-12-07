<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">打开新Activity</li>
        <li>根页面api</li>
        <li>容器内多交易</li>
        <li>弹出窗口交易</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>实现打开一个新的Activity，并展示到最上层，调用这个api的界面，被切换到这个界面之后。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
 /**
 * 打开新Activity
 * @param pageFile
 */
public void openPageAsNewActivity(IPage page,String pageFile) throws Exception;
/**
* 打开新Activity
* @param pageFile
*/
public void openPageAsNewActivity(IPage page,String pageFile,Map<String, Object> map) throws Exception;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
 /**
 * 打开新Activity
 * @param page  当前java类中的page对象
 * @param "Apps/Local/trades/B0002/T0002/T0002.tface"  打开新Activity内要显示的交易界面
 */
app.openPageAsNewActivity(page,"Apps/Local/trades/B0002/T0002/T0002.tface");
            </pre>
            <fieldset><legend><a name="base">结语</a></legend></fieldset>
            <p>该api，有些情况下搭配closeActivity，来使用，实现界面切换跳转，如登陆成功后，跳转到首页面，登陆界面关闭。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 登陆成功后，打开首页
 */
app.openPageAsNewActivity(page,"Apps/Local/trades/B0002/T0002/T0002.tface");
/**
*   关闭登陆界面
*/
app.closeActivity(page);
            </pre>
        </div>
        <div class="layui-tab-item">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>在一个已存在的Panel容器中，打开新的交易界面。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 打开子页面作为内部根页面
 * @param page
 * @param pageFile
 * @throws Exception
 */
public void openSubPageAsRoot(IPage page, String pageFile, String containerId) throws Exception;
/**
 * 打开子页面作为内部根页面
 * @param page
 * @param pageFile
 * @throws Exception
 */
public void openSubPageAsRoot(IPage page, String pageFile, Panel panel) throws Exception;
/**
 * 打开子页面作为内部根页面
 * @param page
 * @param pageFile
 * @throws Exception
 */
public void openSubPageAsRoot(IPage page, String pageFile, Panel panel, Map map) throws Exception;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
 /**
 * 打开页面作为根页面
 * @param page  panel容器ID的page对象
 * @param "Apps/Local/trades/B0002/T0002/T0002.tface"  打开新Activity内要显示的交易界面
 * @param "panel_main"  当前界面内的panel的ID
 */
app.openSubPageAsRoot(page,"Apps/Local/trades/B0002/T0002/T0002.tface","panel_main");
            </pre>
            <fieldset><legend><a name="base">结语</a></legend></fieldset>
            <p>以上api根据项目中的实际情况，挑选合适的使用。</p>
        </div>
        <div class="layui-tab-item">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>在同一个容器内，打开多个交易界面，以实现交易容器内的切换。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 容器内打开只交易
 * @param page
 * @throws Exception
 */
public void openSubPageAsTab(IPage page, String pageFile, String containerId) throws Exception;
/**
 * 容器内打开只交易
 * 带物理按钮的回退功能
 * @param page
 * @throws Exception
 */
public void openSubPageAsTabHasBackStack(IPage page, String pageFile, String containerId) throws Exception;
/**
 * 容器内打开只交易 传入map
 * 带物理按钮的回退功能
 * @param page
 * @throws Exception
 */
public void openSubPageAsTabHasBackStack(IPage page, String pageFile, String containerId,Map<String, Object> map) throws Exception;
/**
 * 容器内打开只交易 界面关闭时，执行回调API ISubPageCloseCallback
 * 带物理按钮的回退功能
 * @param page
 * @param pageFile
 * @param containerId
 * @param callback
 * @throws Exception
 */
public void openSubPageAsTabHasBackStackWithCallback(IPage page, String pageFile, String containerId, ISubPageCloseCallback callback) throws Exception ;
/**
 * 容器内打开只交易 界面关闭时，传入map，执行回调API ISubPageCloseCallback
 * 带物理按钮的回退功能
 * @param page
 * @param pageFile
 * @param containerId
 * @param callback
 * @throws Exception
 */
public void openSubPageAsTabHasBackStackWithCallback(IPage page, String pageFile, String containerId,Map<String, Object> map, ISubPageCloseCallback callback) throws Exception ;
/**
 * 容器内打开只交易 每次都会执行所打开界面的open函数 界面关闭时，传入map，执行回调API ISubPageCloseCallback
 * 带物理按钮的回退功能
 * @param page
 * @param pageFile
 * @param containerId
 * @param callback
 * @throws Exception
 */
public void openSubPageAsTabHasBackStackWithCallbackAndDoOpen(IPage page, String pageFile, String containerId,Map<String, Object> map, ISubPageCloseCallback callback) throws Exception ;
/**
 * 容器内打开只交易 每次都会执行所打开界面的open函数
 * 带物理按钮的回退功能
 * @param page
 * @throws Exception
 */
public void openSubPageAsTabHasBackStackAndDoOpen(IPage page, String pageFile, String containerId) throws Exception;
/**
 * 容器内打开只交易 每次都会执行所打开界面的open函数 传入map
 * 带物理按钮的回退功能
 * @param page
 * @throws Exception
 */
public void openSubPageAsTabHasBackStackAndDoOpen(IPage page, String pageFile, String containerId, Map<String, Object> map) throws Exception ;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
 /**
 * 容器内打开只交易 每次都会执行所打开界面的open函数 界面关闭时，传入map，执行回调API ISubPageCloseCallback
 * @param (IPage) app.getGloable("TA0002PAGE")  panel容器ID的page对象
 * @param tradeId 打开交易界面
 * @param "panel_main"  当前界面内的panel的ID
 * @param null  map参数
 * @param ISubPageCloseCallback 界面切换后执行的回调
 */
app.openSubPageAsTabHasBackStackWithCallbackAndDoOpen((IPage) app
				.getGloable("TA0002PAGE"), tradeId, "panel_main", null,
				new ISubPageCloseCallback() {
					@Override
					public void execute() {
                      //TODO
                      do....();
              }
});
            </pre>
            <fieldset><legend><a name="base">结语</a></legend></fieldset>
            <p>当前应用中api方式，所有传入的map参数，在所打开的交易的open事件中注册一个初始化方法，并按如下方式获取：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
 Map<String, Object> forwardMap = page.getForwardContext() ;
            </pre>
        </div>
        <div class="layui-tab-item">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>以弹出窗口的方式，打开交易</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * Page作为Dialog打开
 * @param page
 * @param tradeId
 */
public void openPageAsDialog(IPage page, String tradeId,Map<String, Object> map, IAlertCallback alertCallback);

/**
 * 打开挂起的窗口交易
 * @param tradeId
 * @param map
 * @return
 */
public boolean openPageAsBlockDialog(IPage page,String tradeId, Map<String, Object> map) ;
/**
 * 窗口内打开交易
 * @param page
 * @param tpath
 * @param isBlur 背景模糊
 * @throws Exception
 */
public void openPageAsWindow(IPage page, String tpath, boolean isBlur) throws Exception;
/**
 * 窗口内打开交易
 * @param page
 * @param tpath
 * @param isBlur 背景模糊
 * @throws Exception
 */
public void openPageAsWindow(IPage page, String tpath,Map<String, Object> map, boolean isBlur) throws Exception;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 如果有数据返回， 推荐使用如下方式，实现阻塞式窗口
 */
Thread thread = new Thread(new Runnable() {
    @Override
    public void run() {
        // TODO Auto-generated method stub
        boolean isTrue = app.openPageAsBlockDialog(page, "Apps/Local/trades/B9999/T9902/T9902_01.tface", null) ;
        if(isTrue){
            app.toast(page, "排队编号关联成功，编号为："+customerInfo.getQueueID(), 5000) ;
            maskDoAction();
        }else{
            app.toast(page, "排队编号关联失败", 5000) ;
        }
    }
});
thread.start() ;

/**
 * 在所打开的窗口关闭中调用app.closeDialogNO，返回false，app.closeDialogYES，返回true
 */
@ApiMethod(name = "关闭窗口")
public void closeWindow() throws Exception {
    app.closeDialogNO(page) ;
}

@ApiMethod(name = "关联排队号")
public void relatedQue() throws Exception {
    String queueID = text_queueID.getValue() ;
    if(!StringUtils.isEmpty(queueID)){
        TouchCustomerInfo customerInfo = (TouchCustomerInfo) app.getGloable(Common.CUSTOMER_INFO);
        customerInfo.setQueueID(queueID) ;
        app.closeDialogYES(page) ;
    }else{
        app.toast(page, "请输入排队号", 5000) ;
    }
}
            </pre>
            <fieldset><legend><a name="base">结语</a></legend></fieldset>
            <p>openPageAsBlockDialog为阻塞方式打开窗口，其他打开窗口api不是，所有会顺序执行api之后的程序。以下为其他方式的窗口关闭api。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
 /**
 * 关闭窗口
 * @param page
 * @throws Exception
 */
public void closeWindow(IPage page);
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