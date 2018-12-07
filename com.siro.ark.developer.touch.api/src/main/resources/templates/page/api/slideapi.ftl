<html>
<head>
  <meta charset="utf-8"/>
  <title>北京兴融移动金融平台组件及API</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

</head>
<body>

<div class="index-api-code-box">
    <pre class="layui-code" lay-title="Java" lay-skin="">
   /**
     * 右侧滑动容器加载交易
     * @param page
     * @throws Exception
     */
    public void loadPageAsRightSlide(IPage page, TradeAttribute tradeAttribute) throws Exception;
    /**
     * 右侧滑动容器加载交易
     * @param page
     * @param tpath 交易路径
     * @throws Exception
     */
    public void loadPageAsRightSlide(IPage page, String tpath) throws Exception;
    /**
     * 打开右侧滑动容器
     * @throws Exception
     */
    public void openRightSlide() throws Exception;
    /**
     * 关闭右侧滑动容器
     * @throws Exception
     */
    public void closeRightSlide() throws Exception;
    /**
     * 禁用右侧滑动容器
     * @param isDisable 是否禁用
     * @throws Exception
     */
    public void disableRightSlide(boolean isDisable) throws Exception;
    /**
     * 左侧滑动容器加载交易
     * @param page
     * @param tpath 交易路径
     * @throws Exception
     */
    public void loadPageAsLeftSlide(IPage page, String tpath) throws Exception;
    /**
     * 关闭左侧滑动容器
     * @throws Exception
     */
    public void openLeftSlide() throws Exception;
    /**
     * 打开左侧滑动容器
     * @throws Exception
     */
    public void closeLeftSlide() throws Exception;
    /**
     * 禁用左侧滑动容器
     * @param isDisable 是否禁用
     * @throws Exception
     */
    public void disableLeftSlide(boolean isDisable) throws Exception;
    </pre>
</div>

</body>
</html>