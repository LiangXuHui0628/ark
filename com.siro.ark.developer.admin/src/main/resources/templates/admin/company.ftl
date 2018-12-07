<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人中心</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script>
        var url = "${base}/admin/company/";
    </script>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="col-sm-12">
        <div class="ibox">
            <div class="ibox-body">
                <div id="exampleToolbar" role="group">
                    <button class="layui-btn layui-btn-normal" onclick="dt_insert()">
                        <i class="layui-icon">&#xe608;</i> 添加
                    </button>
                </div>

                <table id="exampleTable" data-mobile-responsive="true">
                </table>

            </div>
        </div>
    </div>
</div>
<script>
    function getcolumns() {
        var c = [
            {
                checkbox: true
            },
            {
                field: 'companyName', // 列字段名
                title: '厂商名称' // 列标题
            },
            {
                title: '操作',
                field: 'id',
                align: 'center',
                formatter: function (value, row, index) {
                    return dt_edit_button(row)+dt_detail_button(row)+dt_delete_button(row);
                }
            }];

        return c;
    }

    load_data( getcolumns());
</script>
</body>
</html>