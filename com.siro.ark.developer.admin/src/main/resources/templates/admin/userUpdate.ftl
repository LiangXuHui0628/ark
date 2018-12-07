<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人中心</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
    <!-- Bootstrap table -->
    <script src="${rc.contextPath}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="${rc.contextPath}/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="${rc.contextPath}/js/ark/datatable.js"></script>
</head>
<body>

<form class="layui-form layui-form-pane" action="">
    <input type="hidden" name="userid" value="${user.id}" />
    <div style="padding-top: 30px;">
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">用户名称</label>
            <div class="layui-input-block" style="line-height: 36px;">
                 ${user.username}
            </div>
        </div>
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">用户类型</label>
            <div class="layui-input-block">
                <input type="radio" name="usertype" value="0" title="内部用户" checked="">
                <input type="radio" name="usertype" value="1" title="合作伙伴">
            </div>
        </div>
        <div class="layui-form-item" pane="">
            <label class="layui-form-label">伙伴厂商</label>
            <div class="layui-input-block">
                <input type="radio" name="company" value="1" title="男" checked="">
            </div>
        </div>

        <div class="layui-form-item">
            <button class="layui-btn" lay-submit="" lay-filter="formSubmit">提交</button>
        </div>
    </div>
</form>

<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formSubmit)', function(data){
            $.ajax({
                url:"${rc.contextPath}/admin/userApprove/updateUser",
                type:'post',
                data: data.field,
                beforeSend:function () {
                    this.layerIndex = layer.load(0, { shade: [0.5, '#393D49'] });
                },
                success:function(data){
                    layer.close(this.layerIndex);
                    layer.close(1);
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