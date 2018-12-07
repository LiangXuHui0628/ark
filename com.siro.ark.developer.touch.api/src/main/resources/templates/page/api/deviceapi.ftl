<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>


<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">背夹</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>通过Panel组件扩展出来的电子签名，之后通过以下api，获取电子签名图片，和清空电子签名板。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
  /**
     * 连接设备
     *
     * @return
     */
    public boolean connectDriver(int driversType);

    /**
     * 断开连接
     */
    public void disconnectDriver();

    /**
     * 获取密码
     * @param iEncryType
     * @param iTimes
     * @param iLength
     * @param strVoice
     * @param EndType
     * @param strTimeout
     * @param callback
     */
    public void readPin(int iEncryType, int iTimes, int iLength, String strVoice, int EndType, String strTimeout, IDriversCallback callback);

    /**
     * 初始化密码键盘
     * @param callback
     */
    public void initPinPad(IDriversCallback callback);

    /**
     * 更新主密钥
     * @param ZmkIndex
     * @param ZmkLength
     * @param Zmk
     * @param CheckValue
     * @param callback
     */
    public void updateMKey(int ZmkIndex, int ZmkLength, String Zmk, String CheckValue, IDriversCallback callback);

    /**
     * 下载工作密钥
     * @param MKeyIndex
     * @param WKeyIndex
     * @param WKeyLength
     * @param Key
     * @param CheckValue
     * @param callback
     */
    public void downLoadWKey(int MKeyIndex, int WKeyIndex, int WKeyLength, String Key, String CheckValue, IDriversCallback callback);

    /**
     * 激活工作密钥
     * @param MKeyIndex
     * @param WKeyIndex
     * @param callback
     */
    public void activeWKey(int MKeyIndex, int WKeyIndex, IDriversCallback callback);

    /**
     * 读ANSI9.8方式获取密码密文
     * @param MKeyIndex
     * @param WkeyIndex
     * @param iTimesint
     * @param iLength
     * @param pinType
     * @param EndType
     * @param account
     * @param strTimeout
     * @param callback
     */
    public void ansi98GetPin(int MKeyIndex, int WkeyIndex, int iTimesint, int iLength, int pinType,int EndType,String account,String strTimeout, IDriversCallback callback) ;

    /**
     * 生成公钥保护密钥
     * @param pinType
     * @param MKeyIndex
     * @param mpublickey
     * @param strTimeout
     * @param callback
     */
    public void downLoadPublickey(int pinType,int MKeyIndex, String mpublickey, String strTimeout, IDriversCallback callback) ;

    /**
     * 获取密码键盘序列号
     * @param channel
     * @param strTimeout
     * @param callback
     */
    public void commGetPinPadSN(String channel,String strTimeout, IDriversCallback callback) ;

    /**
     * 通用更新主密钥
     * @param MKeyIndex
     * @param WKeyIndex
     * @param WKeyLength
     * @param Key
     * @param CheckValue
     * @param channel
     * @param callback
     */
    public void commDownLoadWKey(int MKeyIndex, int WKeyIndex, int WKeyLength, String Key, String CheckValue, String channel, IDriversCallback callback) ;

    /**
     * 通用下载工作密钥
     * @param ZmkIndex
     * @param ZmkLength
     * @param Zmk
     * @param CheckValue
     * @param channel
     * @param callback
     */
    public void commUpdateMKey(int ZmkIndex,  int ZmkLength, String Zmk, String CheckValue, String channel, IDriversCallback callback) ;

    /**
     * 读取IC卡客户信息接口函数
     * @param ICType
     * @param AIDList
     * @param TagList
     * @param strTimeout
     * @param callback
     */
    public void getICCInfo(int ICType, String AIDList, String TagList, String strTimeout, IDriversCallback callback);

    /**
     * 从IC卡获取ARQC接口函数
     * @param ICType
     * @param TxData
     * @param AIDList
     * @param strTimeout
     * @param callback
     */
    public void getARQC(int ICType, String TxData, String AIDList, String strTimeout, IDriversCallback callback);

    /**
     * 不同渠道从IC卡获取ARQC接口函数
     * @param ICType
     * @param TxData
     * @param AIDList
     * @param strTimeout
     * @param callback
     */
    public void getARQCByChannel(int ICType, String TxData, String AIDList, String strTimeout, IDriversCallback callback);

    /**
     * 向IC卡发送ARPC及写卡脚本接口函数
     * @param ICType
     * @param Txdata
     * @param ARPC
     * @param CDol2
     * @param callback
     */
    public void ARPCExeScript(int ICType, String Txdata, String ARPC, String CDol2, IDriversCallback callback);

    /**
     * 获取IC卡交易日志
     * @param ICType
     * @param NOLog
     * @param strTimeout
     * @param callback
     */
    public void getTrDetail(int ICType, int NOLog, String strTimeout, IDriversCallback callback);

    /**
     * 读取IC卡圈存明细
     * @param ICType
     * @param NOLog
     * @param AIDList
     * @param strTimeout
     * @param callback
     */
    public void getLoadLog(int ICType, int NOLog, String AIDList, String strTimeout, IDriversCallback callback);

    /**
     * 写入磁条数据
     * @param sTrack2
     * @param sTrack3
     * @param strTimeout
     * @param callback
     */
    public void msfWrite(String sTrack2, String sTrack3, String strTimeout, IDriversCallback callback);

    /**
     * 读取磁条数据
     * @param readModel
     * @param strTimeout
     * @param callback
     */
    public void msfRead(String readModel, String strTimeout, IDriversCallback callback);

    /**
     * 获取指纹
     * @param pageQid
     * @param fingerType
     * @param strTimeout
     * @param callback
     */
    public void readFinger(String pageQid, String fingerType, String strTimeout, IDriversCallback callback);

    /**
     * 区分厂商获取指纹
     * @param pageQid
     * @param fingerType
     * @param strTimeout
     * @param callback
     */
    public void readFingerByType(String pageQid, String fingerType, String strTimeout, IDriversCallback callback);

    /**
     * 二代身份证读取
     * @param pageQid
     * @param strTimeout
     * @param callback
     */
    public void readIDFullInfo(String pageQid, String strTimeout, IDriversCallback callback);

    /**
     * 电子签名
     * @param pageQid
     * @param strTimeout
     * @param callback
     */
    public void getSignature(String pageQid, String strTimeout, IDriversCallback callback);

    /**
     * 外国人永久居留证读取
     * @param pageQid
     * @param strTimeout
     * @param callback
     */
    public void readAPRPInfo(String pageQid, String strTimeout, IDriversCallback callback) ;

    /**
     * 二代身份证与外国人永久居留证统一读取
     * @param strPhotoPath
     * @param strTimeout
     * @param callback
     */
    public void readIDAndAPRPInfo(String strPhotoPath, String strTimeout, IDriversCallback callback) ;

    /**
     * 读取IC卡客户信息及ARQC接口函数
     * @param ICType
     * @param AIDList
     * @param TagList
     * @param TxData
     * @param strTimeout
     * @param callback
     */
    public void getICAndARQCInfo(int ICType, String AIDList,String TagList, String TxData, String strTimeout, IDriversCallback callback) ;

    /**
     * 取消读取操作
     * @param callback
     */
    public void cancel(IDriversCallback callback) ;

            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
app.getDrivers().connectDriver((Integer) app.getGloable(Common.TOUCH_DRIVERS_TYPE));
app.getDrivers().readIDFullInfo(page.getPageQId(), "15",new IDriversCallback() {
					public void execute(final Map<String, Object> map) {
						String retCode = (String) map
								.get(IDriversCallback.DRIVERS_RET_CODE);
						String retMesg = (String) map
								.get(IDriversCallback.DRIVERS_RET_MSG);
						/**
						 * 点击取消，直接返回
						 */
						if (cancel) {
							return;
						}
						if ("0".equals(retCode)) {
							String name = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_NAME);
							String sex = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_SEX);
							String nation = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_NATION);
							String borthdate = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_BORTHDATE);
							String address = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_ADDRESS);
							String id = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_ID);
							String police = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_POLICE);
							String enddate = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_ENDDATE);
							String idimagefilepath = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_IMGFILEPATH);
							String idcardFront = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_FRONTIMGFILEPATH);
							String idcardBack = (String) map
									.get(IDriversCallback.DRIVERS_IDCARD_BACKIMGFILEPATH);
                            }
					}
		});
this.app.getDrivers().disconnectDriver();
            </pre>
            <fieldset><legend><a name="base">结语</a></legend></fieldset>
            <p>接口参数请查看《北京兴融移动背夹接口规范1.5.x》,其他接口的使用，在项目中的模板工程中公共交易中。</p>

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