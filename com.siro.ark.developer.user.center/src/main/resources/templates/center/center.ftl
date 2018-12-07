<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人中心</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script>
        var url = "${rc.contextPath}/user/center/";
    </script>
</head>
<body>
<input id="show_message_hid" type="hidden" value="${message}" />

<div class="layui-row" style="background-color: white; height: 56px;">
    <div class="layui-col-md6 user-center-title" style="font-size: 20px;padding-left: 20px;">个人中心</div>
    <div class="layui-col-md6 user-center-title">
         <#if user.admin == "1">
             <a href="${rc.contextPath}/admin/allInfo">
                 <span style="padding-right: 20px;float: right;"><i class="layui-icon layui-icon-console" style="color: firebrick;"></i>后台管理</span>
             </a>
         </#if>
            <a href="http://redmine.siro-info.com:3000/" target="_blank">
                <span style="padding-right: 20px;float: right;"><i class="layui-icon layui-icon-face-surprised" style="color: firebrick;"></i> 缺陷管理</span>
            </a>
    </div>
</div>
<div class="layui-row layui-col-space15" style="background-color: whitesmoke;">
    <div class="layui-col-md3" style="height: 50%; padding-top: 0px;">
        <div class="layui-card" style="height: 440px;">
            <div class="layui-card-body">
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md12">
                        <div style="height: 80px; width: 80px; margin: auto;margin-top: 70px;">
                            <a href="javacript:void(0);">
                              <img src="${rc.contextPath}/img/user.png" onclick="dt_insert();" style="width: 80px; height: 80px;" class="layui-nav-img">
                            </a>
                        </div>
                    </div>
                    <div class="layui-col-md12" style="margin-top: 20px;">
                        <div>
                            <div class="layui-col-md3">
                                <span>用户名称</span>
                            </div>
                            <div class="layui-col-md6">
                                <span>${user.username}</span>
                            </div>
                            <div class="layui-col-md3">
                                <#if user.userstate == "0">
                                    <a href="${rc.contextPath}/user/center/activate">
                                        <span style="float: right; color: red;font-size: 10px;" id="activate">激活</span>
                                    </a>
                                <#elseif user.userstate == "1" >
                                    <span style="float: right; color: green;font-size: 10px;">激活中</span>
                                <#else>
                                     <span style="float: right; color: green;font-size: 10px;">已激活</span>
                                </#if>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-md12" style="margin-top: 20px;">
                        <div>
                            所属项目组
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-col-md9" style="background-color: white;height: 440px;">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>参与项目</legend>
        </fieldset>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">龙江银行</div>
                    <div class="layui-card-body">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">入场日期：2018.08.20</div>
                            <div class="layui-col-md6">离场日期：2018.08.20</div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">项目负责人：100</div>
                            <div class="layui-col-md6">项目职责：研发部</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">赣州银行</div>
                    <div class="layui-card-body">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">入场日期：2018.08.20</div>
                            <div class="layui-col-md6">离场日期：2018.08.20</div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">项目负责人：100</div>
                            <div class="layui-col-md6">项目职责：研发部</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">济宁银行</div>
                    <div class="layui-card-body">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">入场日期：2018.08.20</div>
                            <div class="layui-col-md6">离场日期：2018.08.20</div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">项目负责人：100</div>
                            <div class="layui-col-md6">项目职责：研发部</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">济宁银行</div>
                    <div class="layui-card-body">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">入场日期：2018.08.20</div>
                            <div class="layui-col-md6">离场日期：2018.08.20</div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">项目负责人：100</div>
                            <div class="layui-col-md6">项目职责：研发部</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    $(document).ready(function () {
        var message = $("#show_message_hid").val();
        if(message != ""){
            layer.tips(message, '#activate', {
                tips: [1, '#5498ec'],
                time: 5000
            });
        }
    });

    $("#activate").mouseover(function(){
        layer.tips('激活后可下载资源，查看API文档。', '#activate', {
            tips: [1, '#5498ec'],
            time: 2000
        });
    });

</script>
</body>
</html>