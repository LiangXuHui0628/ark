<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">打印机</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>连接蓝牙打印机，实现打印PDF，字符串，及bitmap的接口。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
* 打开连接
* printerType 打印机厂商 默认-1
* @return
*/
public boolean connectPrinter(int printerType) ;
/**
* 关闭连接
*/
public void disconnectPrinter() ;
/**
* 打印PDF
* @param pdfPath PDF文件路径
* @param point 纸张大小
* @return
*/
public String[] printPDF(String pdfPath, Point point) ;
/**
* 打开连接
* @param str 要打印的字符串
* @param offsetX
* @param offsetY
* @return
*/
public String[] printString(String str, int offsetX, int offsetY) ;
/**
* 打开连接
* @param bitmap 图片对象
* @param offsetX
* @param offsetY
* @return
*/
public String[] printBitmap(Bitmap bitmap, int offsetX, int offsetY) ;
/**
* 退纸
* @return
*/
public void paperOut() ;
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">

 public String[] printReceipt(final IOfflineApp app, final Map<String, Object> map) throws Exception {
    final String[] strArray = new String[2];
    final IPrinter printer = app.getPrinter();
    if (printer != null) {
        boolean b = printer.connectPrinter(-1);
        if (b) {
            TouchCustomerInfo customerInfo = (TouchCustomerInfo) app
                    .getGloable(Common.CUSTOMER_INFO);
            Map<String, Object> retMap = app.doServerAction(
                    "printReceipt", map, PubUtil.this);
            // 下载打印文档
            String srcPath = "/efs/Receipt/" + app.getApkChannel()
                    + "/" + map.get("fileName") + ".pdf";
            String destPath = ToolRepository.getSDCardSiro() + "/"
                    + customerInfo.getCardno() + "/"
                    + map.get("fileName") + ".pdf";
            try {
                // 从服务器上下载文件到pad
                downloadServerFile2Local(app, srcPath, destPath);
            } catch (Exception e) {
                e.printStackTrace();
            }
            File f = new File(destPath);
            // aryRet [0]：0,成功， -1，失败
            // aryRet [1]：错误描述
            Log.i("haha", "f.path" + f.getAbsolutePath());
            String[] printArray = app.getPrinter().printPDF(
                    f.getAbsolutePath(), new Point(200, 110));
            if ("0".equals(printArray[0])) {
                Log.i("haha", "打印成功");
            } else {
                Log.i("haha", "打印失败  错误码：" + printArray[0]
                        + "  错误信息:" + printArray[1]);
            }
            // 打印完成关闭打印机蓝牙连接
//				app.getPrinter().disconnectPrinter();
            // // 打印完成后删除服务器上的缓存文件(删除合成的pdf和图章图片)
            List<String> fileList = new ArrayList<String>();
            fileList.add("efs/Receipt/" + app.getApkChannel() + "/"
                    + map.get("fileName") + ".pdf");
            fileList.add("efs/Receipt/" + app.getApkChannel() + "/"
                    + map.get("fileName") + ".png");
            deleteServerFile(app, fileList);
            strArray[0] = printArray[0];
            strArray[1] = printArray[1];
        //	app.hideMask(arg0, arg1);
        }
    } else {
        Log.i("haha", "打印机连接失败");
        app.toast(page, "打印机连接失败", 5000);
        strArray[0] = "-1";
        strArray[0] = "打印机连接失败";
    }
    return strArray;
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



<div class="index-api-code-box">
    <pre class="layui-code" lay-title="Java" lay-skin="">

    </pre>
</div>


</body>
</html>