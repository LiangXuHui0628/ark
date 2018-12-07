<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">电子签名</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>通过Panel组件扩展出来的电子签名，之后通过以下api，获取电子签名图片，和清空电子签名板。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 获取电子签名
 * @param page
 * @param comId 签名板Id
 * @param callBack
 * @throws Exception
 */
public void getSignature(IPage mainPage, IPage page, String comId, ISignatureCallback callBack) throws Exception ;
/**
 * 清除电子签名
 * @param page
 * @param comId 签名板Id
 * @throws Exception
 */
public void clearSignature(IPage page, String comId) throws Exception ;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
@ApiMethod(name = "确定")
public void signatrueSub() throws Exception {
    final TouchCustomerInfo coustomer = (TouchCustomerInfo) app.getGloable(Common.CUSTOMER_INFO);
    this.app.getSignature(page, "panel_Signature",coustomer.getCardno(), new ISignatureCallback() {
        public void execute(Map<String, Object> map) {
            String filePath = (String) map.get(ISignatureCallback.SIGN_FILE_PAHT);
            System.out.println("电子签名文件路径：==="+filePath);
            coustomer.setSignaturePath(filePath);
            app.closeDialogYES(page) ;
        }
    });
}

@ApiMethod(name = "重签")
public void reSignature() throws Exception {
    app.clearSignature(page, "panel_Signature") ;
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