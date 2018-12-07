<#assign base=rc.contextPath />
<#assign url=rc.requestUri />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>用户注册 </title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="ark">
    <meta name="description" content="ark，....">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
    <sitemesh:write property='head'/>
    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico">
    <link href="${rc.contextPath}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${rc.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet"/>
    <link href="${rc.contextPath}/css/animate.css" rel="stylesheet"/>
    <link href="${rc.contextPath}/css/style.css?v=4.1.0" rel="stylesheet"/>
    <link href="${rc.contextPath}/js/plugins/layui/css/layui.css" rel="stylesheet"/>
    <link href="${rc.contextPath}/css/ark.css" rel="stylesheet"/>


    <script src="${rc.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${rc.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>

    <script src="${rc.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${rc.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/layer/layer.min.js"></script>

    <script src="${rc.contextPath}/js/hplus.js?v=4.1.0"></script>
    <script type="text/javascript" src="${rc.contextPath}/js/contabs.js"></script>

    <script src="${rc.contextPath}/js/websocket/sockjs.min.js" type="text/javascript"></script>
    <script src="${rc.contextPath}/js/websocket/stomp.min.js" type="text/javascript"></script>
    <script src="${rc.contextPath}/js/websocket/sliescoket.js" type="text/javascript"></script>

    <script src="${rc.contextPath}/js/plugins/pace/pace.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div style="height: 50px;margin-top: 80px;">
        <div style="margin: auto;width: 100px;font-size: 24px;">用户注册</div>
</div>
<div style="margin: auto;width: 50%;">
    <form class="layui-form" action="">
        <div class="layui-form-item" >
            <label class="layui-form-label">用户名称</label>
            <div class="layui-input-block" id="username-box">
                <input type="text" name="username" id="username" required  lay-verify="required" placeholder="请输入用户名称" autocomplete="off" class="layui-input" onblur="userNameCheck();">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">登陆用户名</label>
            <div class="layui-input-block" id="loginname-box">
                <input type="text" name="loginname" id="loginname" required  lay-verify="required" placeholder="请输入登陆用户名" autocomplete="off" class="layui-input" onblur="loginNameCheck();">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号码</label>
            <div class="layui-input-block">
                <input type="text" name="mobile" required  lay-verify="required" placeholder="请输入手机号码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">电子邮箱</label>
            <div class="layui-input-block">
                <input type="text" name="email" required  lay-verify="required" placeholder="使用公司邮箱注册，免激活" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">登陆密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script>

    function userNameCheck(){
        if ($("#username").val() != "") {
            $.ajax({
                url:"${rc.contextPath}/register/userNameCheck",
                type:'post',
                data:{
                    "username":$("#username").val()
                },
                beforeSend:function () {
                    this.layerIndex = layer.load(0, { shade: [0.5, '#393D49'] });
                },
                success:function(data){
                    if(data.code == '200'){
                        var text = "<div id='username_tip' style='width: 120px;float: right;line-height: 36px;'>用户名称可用</div>"
                        $("#username_tip").remove();
                        $("#username-box").append(text) ;
                    }else{
                        var text = "<div id='username_tip' style='width: 120px;float: right;line-height: 36px;color: red;'>用户名称已存在</div>"
                        $("#username_tip").remove();
                        $("#username-box").append(text) ;
                    }
                },
                complete: function () {
                    layer.close(this.layerIndex);
                }
            });
        }
    }

    function loginNameCheck(){
        if($("#loginname").val() != ""){
            $.ajax({
                url:"${rc.contextPath}/register/loginNameCheck",
                type:'post',
                data:{
                    "loginname":$("#loginname").val()
                },
                beforeSend:function () {
                    this.layerIndex = layer.load(0, { shade: [0.5, '#393D49'] });
                },
                success:function(data){
                    if(data.code == '200'){
                        var text = "<div id='loginname_tip' style='width: 120px;float: right;line-height: 36px;'>登陆名称可用</div>"
                        $("#loginname_tip").remove();
                        $("#loginname-box").append(text) ;
                    }else{
                        var text = "<div id='loginname_tip' style='width: 120px;float: right;line-height: 36px;color: red;'>登陆名称已存在</div>"
                        $("#loginname_tip").remove();
                        $("#loginname-box").append(text) ;
                    }
                },
                complete: function () {
                    layer.close(this.layerIndex);
                }
            });
        }
    }

    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            $.ajax({
                url:"${rc.contextPath}/doRegister",
                type:'post',
                contentType: "application/json",
                data:JSON.stringify(data.field),
                beforeSend:function () {
                    this.layerIndex = layer.load(0, { shade: [0.5, '#393D49'] });
                },
                success:function(data){
                    if(data.code == '200'){
                        layer.msg(data.message, {
                            icon: 6,//成功的表情
                            time: 2000 //1秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            window.location.href="${rc.contextPath}/login" ;
                        });
                    }else{
                        layer.msg(data.error,{icon: 5});//失败的表情
                        return;
                    }
                },
                complete: function () {
                    layer.close(this.layerIndex);
                }
            });
            return false;
        });
    });
</script>
</body>

</html>
