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
     * 获取资源目录绝对路径
     * @return
     */
    public String getAbsoluteResourcesDir();
    /**
     * 全局缓存设置Set
     * @param set
     */
    public void setSharedPreferencesDataSet(String key, Set<String> set);
    /**
     * 获取全局缓存Set
     * @param key
     * @return
     */
    public Set<String> getSharedPreferencesDataSet(String key);
    /**
     * 返回Android上下文
     * @return
     */
    public Context getAndroidContext();
        /**
     * 显示等待
     * @param msg 信息
     * @param dur 显示时间 毫秒
     * @throws Exception
     */
    public void showMask(String msg, int dur, IMaskCallback callback) throws Exception ;
    /**
     * 显示等待
     * @param msg 信息
     * @throws Exception
     */
    public void showMask(String msg, IMaskCallback callback) throws Exception ;
    /**
     * 关闭等待
     * @throws Exception
     */
    public void hideMask() throws Exception ;
        /**
     * 弹出提示框
     * @param page
     * @param message
     */
    public void alert(IPage page, String message);
    /**
     * 弹出确认框
     * @param page
     * @param message
     * @return
     */
    public boolean confirm(IPage page, String message);
     /**
     * 全局上下文取值
     * @return
     */
    public Object getGloable(String strKey);
    /**
     * 全局上下文赋值
     * @param strKey
     * @param strValue
     */
    public void putGloable(String strKey,Object strValue) ;
    /**
     * 全局上下文移除
     * @param strKey
     */
    public void removeGloable(String strKey) ;
    </pre>
</div>

</body>
</html>