<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>欢迎页</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
</head>
<body>
<div class="layui-carousel" id="product-banner">
    <div carousel-item>
        <div><img src="${rc.contextPath}/img/banner/banner5.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner6.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner7.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner5.png" ></div>
    </div>
</div>

<div class="layui-row" style="padding-top: 50px;">
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
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        carousel.render({
            elem: '#product-banner'
            ,width: '100%'
            ,height: '419px'
            ,interval: 5000
            ,anim:'fade'
        });
    });
</script>
</body>
</html>