<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>欢迎页</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${rc.contextPath}/css/bootstrap.min.css">
</head>
<body>
<div class="layui-carousel" id="index-banner">
    <div carousel-item>
        <div><img src="${rc.contextPath}/img/banner/banner5.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner6.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner7.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner5.png" ></div>
    </div>
</div>

<div class="layui-row" style="padding-top: 50px;background-color: #fafcff;">
    <div class="layui-col-md12">
        <div style="margin: auto;width: 60px;"><h1>产品</h1></div>
    </div>
    <div class="layui-col-md12" style="margin-top: 50px; padding-bottom: 50px;">
        <div class="layui-col-md4">
            <div class="layui-row">
                <div class="layui-col-md4">
                    <img height="40px" width="40px" src="${rc.contextPath}/img/index/touch.png" style="float: right;"/>
                </div>
                <div class="layui-col-md8">
                    <a href="" target="_blank">移动金融产品</a><br><span>专业的移动金融平台</span>
                </div>
            </div>
        </div>
        <div class="layui-col-md4">
            <div class="layui-row">
                <div class="layui-col-md4">
                    <img height="40px" width="40px" src="${rc.contextPath}/img/index/touch.png" style="float: right;"/>
                </div>
                <div class="layui-col-md8">
                    <a href="" target="_blank">综合柜面产品</a><br><span>以客户为中心，专业的综合柜面系统</span>
                </div>
            </div>
        </div>
        <div class="layui-col-md4">
            <div class="layui-row">
                <div class="layui-col-md4">
                    <img height="40px" width="40px" src="${rc.contextPath}/img/index/touch.png" style="float: right;"/>
                </div>
                <div class="layui-col-md8">
                    <a href="" target="_blank">无纸化产品</a><br><span>专业，安全，稳定解决方案</span>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-col-md12" style="margin-top: 50px; padding-bottom: 50px;">
        <div class="layui-col-md4">
            <div class="layui-row">
                <div class="layui-col-md4">
                    <img height="40px" width="40px" src="${rc.contextPath}/img/index/touch.png" style="float: right;"/>
                </div>
                <div class="layui-col-md8">
                    <a href="" target="_blank">ESB产品</a><br><span>企业级服务总线解决方案</span>
                </div>
            </div>
        </div>
        <div class="layui-col-md4">
            <div class="layui-row">
                <div class="layui-col-md4">
                    <img height="40px" width="40px" src="${rc.contextPath}/img/index/touch.png" style="float: right;"/>
                </div>
                <div class="layui-col-md8">
                    <a href="" target="_blank">中间业务产品</a><br><span>稳定服务于多家商业银行</span>
                </div>
            </div>
        </div>
        <div class="layui-col-md4">
            <div class="layui-row">
                <div class="layui-col-md4">
                    <img height="40px" width="40px" src="${rc.contextPath}/img/index/touch.png" style="float: right;"/>
                </div>
                <div class="layui-col-md8">
                    <a href="" target="_blank">统一监控产品</a><br><span>为柜面系统，ESB系统提供专业的监控支持</span>
                </div>
            </div>
        </div>
    </div>

</div>


<div class="layui-row" style="padding-top: 50px;background-color: #f5f8fb;">
    <div class="layui-col-md12">
        <div style="margin: auto;width: 140px;"><h1>完善的API</h1></div>
    </div>
    <div class="layui-col-md12" style="margin-top: 50px;margin-bottom: 50px;">
        <div class="layui-col-md6">
            <div class="index-api-box">
                <div class="index-api-img-box">
                    <img src="${rc.contextPath}/img/p2.jpg"/>
                </div>
                <div class="index-api-img-title-box">
                    <label>完善的在线文档</label>
                </div>
                <div class="index-api-btn-box">
                    <a href="${rc.contextPath}/study" class="layui-btn layui-btn-lg">立即体验</a>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="index-api-code-box">
                <pre class="layui-code" lay-title="Java" lay-skin="">
/**
 * 以窗口形式打开交易
 * @param page
 * @param tradeAttribute
 * @throws Exception
 */
public void openPageAsWindow(IPage page, TradeAttribute tradeAttribute) throws Exception;
/**
 * 拍照
 * @param page
 * @throws Exception
 */
public void createPicture(IPage page, ICameraCallback callback) throws Exception;
/**
 * 拍照
 * @param imgNumber 影像套号
 * @param idNo 证件号码
 * @throws Exception
 */
public void createPicture(String idNo, String imgNumber, ICameraCallback callback) throws Exception;
                </pre>
            </div>
        </div>
    </div>

</div>


<div class="layui-row" style="padding-top: 50px;background-color: #fafcff;">
    <div class="layui-col-md12" style="padding-top: 50px;margin-bottom: 50px;">
        <div class="layui-col-md6">
            <div class="index-rec-box">
                <div class="index-rec-img-box">
                    <img src="${rc.contextPath}/img/index/rec.jpg"/>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="index-rec-font-box">
                <div style="padding-top: 80px;">
                    <div style="font-size: 24px;color: black;">全套开发工具，实例工程，打包下载</div>
                    <div style="margin-top: 20px;">包括IDE，服务端，apk，实例工程，帮助开发人员快速开发项目</div>
                </div>
                <div style="margin-top: 86px;">
                    <a href="${rc.contextPath}/resources" class="layui-btn layui-btn-warm layui-btn-lg">获取资源</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="layui-row" style="padding-top: 50px;background-color: #ffffff;">
    <div class="layui-col-md12">
        <div style="margin: auto;width: 140px;"><h1>移动案例</h1></div>
    </div>
    <div class="layui-col-md12" style="padding-top: 50px;margin-bottom: 50px;">
        <div style="width: 80%;margin: auto;">
            <img style="width: 100%;" src="${base}/img/index/project.jpeg">
        </div>
    </div>

</div>

<div class="layui-row" style="padding-top: 50px;background-color: #f5f8fb;">
    <div class="layui-col-md12">
        <div style="margin: auto;width: 140px;"><h1>成功案例</h1></div>
    </div>
    <div class="layui-col-md12" style="padding-top: 50px;margin-bottom: 50px;">
        <div style="width: 80%;margin: auto;">
            <table class="layui-table" lay-even="" lay-skin="line">
                <colgroup>
                    <col width="300">
                    <col width="300">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>机构名称</th>
                    <th>项目名称</th>
                    <th>使用产品</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>吉林银行</td>
                    <td>新核心柜面系统</td>
                    <td>综合柜面产品</td>
                </tr>
                <tr>
                    <td>龙江银行</td>
                    <td>中间业务系统</td>
                    <td>中间业务产品，移动金融产品</td>
                </tr>
                <tr>
                    <td>邮政储蓄银行</td>
                    <td>综合柜面系统</td>
                    <td>综合柜面产品</td>
                </tr>
                <tr>
                    <td>河北农信</td>
                    <td>综合柜面系统</td>
                    <td>综合柜面产品</td>
                </tr>
                <tr>
                    <td>山东城商行联盟</td>
                    <td>综合柜面系统</td>
                    <td>综合柜面产品，移动金融产品</td>
                </tr>
                <tr>
                    <td>晋城银行</td>
                    <td>综合柜面系统</td>
                    <td>综合柜面产品，移动金融产品，无纸化产品</td>
                </tr>
                <tr>
                    <td>赣州银行</td>
                    <td>综合柜面系统</td>
                    <td>综合柜面产品，移动金融产品，无纸化产品</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

<div class="all-footer">
    <div style="width: 80%; height:100%;margin: auto;">
        <div class="layui-row" style="padding-top: 28px;">
            <div class="layui-col-md4">
                <a href="http://siro-info.com/" target="_blank">
                    <i class="layui-icon layui-icon-website" style="color: #ffffff;font-size: 12px;margin-right: 5px;"></i>公司主页</a>
            </div>
            <div class="layui-col-md4">
                <a href="http://redmine.siro-info.com:3000/" target="_blank">
                    <i class="layui-icon layui-icon-face-surprised" style="color: #ffffff;font-size: 12px;margin-right: 5px;"></i>Bug管理</a>
            </div>
            <div class="layui-col-md4">
                <a href="${base}/aboutDeveloper" target="_blank">
                    <i class="layui-icon layui-icon-about" style="color: #ffffff;font-size: 12px;margin-right: 5px;"></i>关于开发者中心</a>
            </div>
        </div>
        <div class="layui-row" style="padding-top: 14px;">
            <div class="layui-col-md4">
                <a href="http://www.androiddevtools.cn" target="_blank">
                    <i class="layui-icon layui-icon-read" style="color: #ffffff;font-size: 12px;margin-right: 5px;"></i>Android开发者工具</a>
            </div>
            <div class="layui-col-md4">

            </div>
            <div class="layui-col-md4">

            </div>
        </div>
    </div>
</div>
<script>
    layui.use(['carousel','code'], function(){
        var carousel = layui.carousel;
        carousel.render({
            elem: '#index-banner'
            ,width: '100%'
            ,height: '419px'
            ,interval: 5000
            ,anim:'fade'
        });
        layui.code({
            height: '350px'
        });

    });

</script>
</body>
</html>