<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人中心</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script>
        var url = "${base}/admin/userManager/";
    </script>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="col-sm-12">
        <div class="ibox">
            <div class="ibox-body">
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
                field: 'username', // 列字段名
                title: '用户名称' // 列标题
            },
            {
                field: 'loginname', // 列字段名
                title: '登陆用户名' // 列标题
            },
            {
                field: 'mobile',
                title: '手机号码'
            },
            {
                field: 'email',
                title: '邮箱'
            },
            {
                field: 'usertype',
                title: '用户类型',
                formatter: function (value, row, index) {
                    return userTypeFromatter(value);
                }
            },
            {
                field: 'userstate',
                title: '用户状态',
                formatter: function (value, row, index) {
                    return userStateFromatter(value);
                }
            },
            {
                field: 'admin',
                title: '是否管理员',
                formatter: function (value, row, index) {
                    return userAdminFromatter(value);
                }
            },
            {
                field: 'lastLoginTime',
                title: '最后登陆时间'
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

    function userStateFromatter(state){
        if(state == "2"){
            return "已激活" ;
        }else if(state == "3"){
            return "禁用" ;
        }
    }

    function userTypeFromatter(type){
        if(type == "0"){
            return "内部员工" ;
        }else if(type == "1"){
            return "合作伙伴" ;
        }
    }
    function userAdminFromatter(admin){
        if(admin == "1"){
            return "管理员" ;
        }else{
            return "用户" ;
        }
    }

</script>
</body>
</html>