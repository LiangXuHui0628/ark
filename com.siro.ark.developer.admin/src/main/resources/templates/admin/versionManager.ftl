<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人中心</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script>
        var url = "${base}/admin/versionManager/";
    </script>
</head>
<body>
<div class="layui-col-md12" style="float: right; margin-right: -25px; margin-top: 20px;">
    <button class="layui-btn layui-btn-normal" onclick="dt_insert()">
        <i class="layui-icon">&#xe608;</i> 添加
    </button>
</div>

<div class="layui-col-md12" style="height: 100%;">
    <ul class="layui-timeline" style="padding: 20px; background-color: white;">
         <#list arkDevApkVersions as arkDevApkVersion>
               <li class="layui-timeline-item">
                   <i class="layui-icon layui-timeline-axis"></i>
                   <div class="layui-timeline-content layui-text">
                       <h3 class="layui-timeline-title">${arkDevApkVersion.releaseDate?date}</h3>
                       <p>版本号：${arkDevApkVersion.versionCode} 版本名称：${arkDevApkVersion.versionName}</p>
                       <ul>
                           <#list arkDevApkVersion.details as details>
                               <li>${details_index+1}.${details.descMsg}</li>
                           </#list>
                       </ul>
                   </div>
               </li>
         </#list>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis"></i>
            <div class="layui-timeline-content layui-text">
                <div class="layui-timeline-title">过去</div>
            </div>
        </li>
    </ul>
</div>
<script>

</script>
</body>
</html>