<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>欢迎页</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
</head>
<body>
<div class="layui-row layui-col-space15" style="background-color: whitesmoke; height: 100%;">
    <div class="layui-col-md3" style="height: 100%;">
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
    <div class="layui-col-md9" style="">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>Debug版本下载</legend>
        </fieldset>
        <div class="layui-row layui-col-space15">
            <#list arkDevApkList as arkDevApk>
                 <div class="layui-col-md4">
                     <div class="layui-card">
                         <div class="layui-card-header" style="font-size: 16px;"><i class="layui-icon layui-icon-app" style="color: firebrick;"></i> ${arkDevApk.apkName}</div>
                         <div class="layui-card-body">
                             <div class="layui-row layui-col-space15">
                                 <div class="layui-col-md6">版本编号：${arkDevApk.versionCode}</div>
                                 <div class="layui-col-md6">版本名称：${arkDevApk.versionName}</div>

                             </div>
                             <div class="layui-row layui-col-space15">
                                 <div class="layui-col-md6">发版日期：${arkDevApk.releaseDate?date}</div>
                                 <div class="layui-col-md6">作者：${arkDevApk.authorName}</div>
                             </div>
                             <div class="layui-row layui-col-space15">
                                 <div class="layui-col-md6">下载量：${arkDevApk.downloadCount}</div>
                                 <div class="layui-col-md6">
                                     <a href="${rc.contextPath}/resources/download/${arkDevApk.id}" class="layui-btn layui-btn-mini layui-btn-radius layui-btn-primary">下载</a>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
            </#list>
    </div>
</div>

<script>

</script>
</body>
</html>