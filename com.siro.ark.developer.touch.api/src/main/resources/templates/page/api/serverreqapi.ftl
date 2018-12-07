<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" style="margin-top: 60px;">
    <ul class="layui-tab-title">
        <li class="layui-this">通讯请求</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset><legend><a name="base">接口API</a></legend></fieldset>
            <p>实现数据请求，已经返回的处理，调用doServerAction，需要自行建立对应的java文件的_Online.java文件。</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 发送服务端处理
 * @param taction xxx_Online.java 中的方法名称
 * @param parmsMap  请求参数
 * @param clazz     当前java类 一般传入this，如果是内部类 需要传入
 */
public Map<String, Object>  doServerAction(String taction, Map<String,?> parmsMap,Object clazz);
            </pre>
            <fieldset><legend><a name="base">使用方式</a></legend></fieldset>
            <p>在xxx.java文件中调用，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
public void doServiceReq() throws Exception{
		final PubUtil pu = new PubUtil();
		final IPage t0005_01_page = (IPage) app.getGloable("T0005_01_page") ;
		TouchCustomerInfo customerInfo = (TouchCustomerInfo) app.getGloable(Common.CUSTOMER_INFO);
		Map<String, Object> tradeMap = new HashMap<String, Object>();
		tradeMap.put("cusName", customerInfo.getUsername()) ;
		tradeMap.put("idNo", customerInfo.getCardno()) ;
		tradeMap.put("idType", customerInfo.getCardtype()) ;
		tradeMap.put("telNo", customerInfo.getTelNo()) ;
		tradeMap.put("queueID", customerInfo.getQueueID()) ;
		tradeMap.put("payUserName",text_payUserName.getValue());
		tradeMap.put("payAccno",text_payAccno.getValue());
		tradeMap.put("payPhone",text_payPhone.getValue());
		tradeMap.put("payAmount",number_payAmount.getValue());
		tradeMap.put("gainUserName",text_gainUserName.getValue());
		tradeMap.put("gainBank",select_gainBank.getValue());
		tradeMap.put("gainAccno",text_gainAccno.getValue());
		tradeMap.put("use",select_use.getValue());

		Map<String, Object> retmap = this.app.doServerAction("postSubmitData",
				tradeMap, this);
		String ercode = (String) retmap.get(Common.TOUCH_RET_ERCODE);
		String ermesg = (String) retmap.get(Common.TOUCH_RET_ERMESG);
		if ("000000".equals(ercode)) {
			Map<String, Object> mesgMap = null;
			try {
				mesgMap = JsonUtility.parseJsonStringToMap((retmap
						.get(Common.TOUCH_RET_MESSAGE)).toString());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String formSerialNo = (String) mesgMap.get("formSerialNo") ;
			pu.openStateAlert(app, page, "交易成功",
					Common.alert_state.STATR_SUCESS, new IAlertCallback() {

						@Override
						public void clickYes() {
							try {
								app.closeActivity(t0005_01_page);
							} catch (Exception e) {
								e.printStackTrace();
							}
						}

						@Override
						public void clickNo() {
						}
					});
		} else {
			pu.openStateAlert(app, page, "交易失败:"+ermesg,
					Common.alert_state.STATR_FAILED, new IAlertCallback() {
						@Override
						public void clickYes() {
							try {
								app.closeActivity(t0005_01_page);
							} catch (Exception e) {
								e.printStackTrace();
							}
						}

						@Override
						public void clickNo() {
						}
					});
		}
	}


            </pre>
            <p>xxx_Online.java文件代码，如下：</p>
            <pre class="layui-code" lay-title="Java" lay-skin="">
@ApiMethod(name = "填单数据提交")
	public void postSubmitData() throws Exception {
		String cusName = (String) tc.get("cusName");
		String idNo = (String) tc.get("idNo");
		String telNo = (String) tc.get("telNo");
		String queueID = (String) tc.get("queueID");
		String payUserName = (String) tc.get("payUserName");
		String payAccno = (String) tc.get("payAccno");
		String payPhone = (String) tc.get("payPhone");
		String payAmount = (String) tc.get("payAmount");
		String gainUserName = (String) tc.get("gainUserName");
		String gainBank = (String) tc.get("gainBank");
		String gainAccno = (String) tc.get("gainAccno");
		String use = (String) tc.get("use");
		String idType = "1011";

		TouchCommUtils tcomm = new TouchCommUtils(tc.getContext(), uc.getContext());
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("payUserName",payUserName);
		dataMap.put("payAccno", payAccno);
		dataMap.put("payPhone", payPhone);
		dataMap.put("payAmount", payAmount);
		dataMap.put("gainUserName", gainUserName);
		dataMap.put("gainBank", gainBank);
		dataMap.put("gainAccno", gainAccno);
		dataMap.put("use", use);
		dataMap.put("cusName", cusName);
		dataMap.put("idNo", idNo);
		dataMap.put("telNo", telNo);
		dataMap.put("idType", idType);
		//TODO 客户信息
		tc.put("formInfo", JsonUtility.convertMapToJsonString(dataMap));
		tc.put("formNo", "9903");//交易代码
		tc.put("branchNo", uc.get(system.G_BRNO));
		tc.put("queueNo", queueID);
		tc.put("custNo", "8880001");
		tc.put("custNm", cusName);
		tc.put("acctNo", "6225800101813854");
		tc.put("idType", idType);
		tc.put("idNo", idNo);
		tc.put("telNo", telNo);
		Map<Object, Object> retMap = tcomm.callDataExchangeQuery("YCL", "9903", "EFS_TD_0001", "trx/trade/BYcl/T12346/smap/EFS_TD_0001.smap");
		logger.debug("xxx ret map = {}", retMap);
		writeTc(retMap.get(trx.T_RETCODE).toString(), retMap.get(trx.T_RETMSG).toString());
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