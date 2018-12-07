<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">拍照</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>拍照api，其中一个为照片文件名，自定义名称前缀字符串</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 拍照
 * @param imgNumber 影像套号
 * @param idNo 证件号码
 * @throws Exception
 */
public void createPicture(String idNo, String imgNumber, ICameraCallback callback) throws Exception;
/**
 * 拍照
 * @param imgNumber 影像套号
 * @param idNo 证件号码
 * @param namePrefix 名称前缀
 * @throws Exception
 */
public void createPicture(String idNo, String imgNumber, String namePrefix, ICameraCallback callback) throws Exception;
/**
 * 录像
 * @param page
 * @throws Exception
 */
public void createVideo(IPage page, ICameraCallback callback) throws Exception;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
 /**
 * 根据影像套号，生成各种交易的照片集合
 * 如果影像套号为空，默认证件号码
 */
String imgNumber = (String) app.getGloable(Common.trade.TOUCH_TRADE_IMAGE_NUMBER) ;
if(StringUtils.isEmpty(imgNumber)){
    imgNumber = coustomer.getCardno() ;
}
this.app.createPicture(coustomer.getCardno(), imgNumber, new ICameraCallback() {
    public void execute(Map<String, Object> map) {
        String saveImageNum = (String) app.getGloable(Common.trade.TOUCH_TRADE_IMAGE_NUMBER) ;
        if(StringUtils.isEmpty(saveImageNum)){
            saveImageNum = coustomer.getCardno() ;
        }
        String fileName = map.get(ICameraCallback.FILE_NAME).toString();
        String filePath = map.get(ICameraCallback.FILE_PAHT).toString();
        coustomer.addImage(saveImageNum,imgDesc, fileName, filePath);
        image.setMode(image.getSrc());
        image.setSrc(filePath);
    }
}) ;
            </pre>
            <fieldset><legend><a name="base">结语</a></legend></fieldset>
            <p>录像createVideo在目前的市场中没有实际使用，如有要求使用，请联系我。</p>
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