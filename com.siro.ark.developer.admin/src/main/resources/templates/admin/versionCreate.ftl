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
<div style="margin: auto;width: 90%;padding-top: 40px;">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">版本编号</label>
            <div class="layui-input-block">
                <input type="text" name="versionCode" id="versionCode" required  lay-verify="required" placeholder="请输入应用名称" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">版本名称</label>
            <div class="layui-input-block">
                <input type="text" name="versionName" id="versionName" required  lay-verify="required" placeholder="请输入应用名称" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div id="desc-form">
            <div class="layui-form-item" >
                <label class="layui-form-label">描述1</label>
                <div class="layui-input-block">
                    <input type="text" name="desc1" id="desc" required  lay-verify="required" placeholder="请输入版本描述" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <button class="layui-btn layui-btn-normal" onclick="addVersionDesc()">
            <i class="layui-icon">&#xe608;</i> 添加
        </button>
        <button style="float: right;" class="layui-btn" lay-submit lay-filter="formSubmit" id="submitListAction">立即提交</button>
    </form>
</div>
<script>
    /**
     *  动态增加输入域
     */
    var index = 2 ;
    function addVersionDesc() {
        var desc = $("#desc-form");
        var txt1 = $(['<div class="layui-form-item">'
            ,'<label class="layui-form-label">描述'+index+'</label>'
            ,'<div class="layui-input-block">'
            ,'<input type="text" name="desc'+index+'" required  lay-verify="required" placeholder="请输入版本描述" autocomplete="off" class="layui-input">'
            ,'</div>'
            , '</div>'].join(''));
        desc.append(txt1);
        index++;
    }

    //Demo
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formSubmit)', function(data){
            $.ajax({
                url:"${rc.contextPath}/admin/versionManager/versionCreate",
                type:'post',
                data: data.field,
                beforeSend:function () {
                    this.layerIndex = layer.load(0, { shade: [0.5, '#393D49'] });
                },
                success:function(data){
                    if(data.code == '200'){
                        parent.layer.msg("操作成功");
                        parent.re_load();
                        var index = parent.layer.getFrameIndex(window.name); // 获取窗口索引
                        parent.layer.close(index);
                    }else{
                        layer.msg(data.message,{icon: 5});//失败的表情
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