<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>欢迎页</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
</head>
<body>
<div class="layui-carousel" id="study-banner">
    <div carousel-item>
        <div><img src="${rc.contextPath}/img/banner/banner5.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner6.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner7.png" ></div>
        <div><img src="${rc.contextPath}/img/banner/banner5.png" ></div>
    </div>
</div>
<div style="background-color: #f9f9f9; ">
    <div style="padding: 50px 20px 50px 20px;  width: 80%;margin: auto;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">移动金融API</div>
                    <div class="layui-card-body">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">版本：2.19.18</div>
                            <div class="layui-col-md6">发版日期：2018.08.20</div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">点击量：100</div>
                            <div class="layui-col-md6">作者：研发部</div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">评价：<i class="layui-icon layui-icon-rate-solid" style="font-size: 20px; color: #1E9FFF;"></i> </div>
                            <div class="layui-col-md6">
                                <a href="${rc.contextPath}/study/touch/showApi" class="layui-btn layui-btn-mini layui-btn-radius layui-btn-primary">查看</a>
                            </div>
                        </div>
                    </div>
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
    layui.use(['element', 'layer','carousel'], function(){
        var element = layui.element;
        var layer = layui.layer;
        var carousel = layui.carousel;
        carousel.render({
            elem: '#study-banner'
            ,width: '100%'
            ,height: '419px'
            ,interval: 5000
            ,anim:'fade'
        });
    });
</script>
</body>
</html>