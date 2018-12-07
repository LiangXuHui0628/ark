<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>登陆页</title>
    <meta name="keywords" content="北京兴融信息开发者中心">
    <meta name="description" content="北京兴融信息开发者中心">
    <link href="${base}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${base}/css/animate.css" rel="stylesheet">
    <link href="${base}/css/style.css" rel="stylesheet">
    <link href="${base}/css/login.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
</head>

<body class="signin">
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-5" style="margin: auto;float: none!important;">
            <div class="login-form">
                <p class="m-t-md">北京兴融信息开发者中心</p>
                <div class="form-group">
                    <input type="text" id="username" name="username" autocomplete="off" style="background: none;" class="form-control uname" placeholder="用户名" value=""/>
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" style="background: none;" class="form-control pword m-b" placeholder="密码"
                           value=""/>
                </div>
                <div class="form-group">
                    <label class="checkbox" style="float: left;"><input type="checkbox" name="rememberMe" id="rememberMe" value="true"/>
                        下次自动登录 </label>
                    <div style="float: right; margin-top: 10px;">
                        <a style="color: white;" href="${rc.contextPath}/register">注册</a>
                    </div>

                </div>

                <div class="form-actions">

                    <button class="btn btn-success btn-block" onclick="doLogin();">登录 <i
                            class="m-icon-swapright m-icon-white"></i></button>
                </div>
            </div>
        </div>
    </div>
    <div class="signup-footer">
        <div style="text-align: center;">&copy; 2018 All Rights Reserved. siro-info
        </div>
    </div>
</div>
<!-- 全局js -->
<script src="${base}/js/jquery.min.js?v=2.1.4"></script>
<script src="${base}/js/bootstrap.min.js?v=3.3.6"></script>

<!-- 自定义js -->
<script src="${base}/js/content.js?v=1.0.0"></script>

<script src="${base}/js/plugins/layer/layer.min.js"></script>

<script>

function doLogin(){
    var username = $("#username").val();
    var password = $("#password").val();
    if(username == ""){
        layer.msg("用户名不能为空！");
    }
    if(password == ""){
        layer.msg("密码不能为空！");
    }
    $.ajax({
        url:"${rc.contextPath}/login",
        type:'post',
        data:{
            "username":username,
            "password":password
        },
        beforeSend:function () {
            this.layerIndex = layer.load(0, { shade: [0.5, '#393D49'] });
        },
        success:function(data){
            if(data.code == '200'){
                window.location.href="${rc.contextPath}/index" ;
            }else{
                layer.msg(data.message,{icon: 5});//失败的表情
                return;
            }
        },
        complete: function () {
            layer.close(this.layerIndex);
        }
    });
}

    $('.login-form input').keypress(function (e) {
        if (e.which == 13) {
            doLogin();
        }
    });

</script>


</body>
</html>
