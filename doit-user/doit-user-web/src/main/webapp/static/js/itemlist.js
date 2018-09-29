//引入admin.js(webapp/static/js/admin.js)
//itemlist.js(webapp/static/js/itemlist.js)
layui.extend({
    admin: '{/}../../static/js/admin'

});
//按需加载admin.js
layui.use(['admin', 'jquery', 'table','layer','form','util'], function () {
    //初始化变量
    var admin = layui.admin,
        $ = layui.jquery,
        table = layui.table,
        layer = layui.layer,
        form = layui.form,
        util=layui.util;
    //对表格进行渲染
    table.render({
        //什么是表格属性：page,elem,url,cols
        //什么是列属性：type,field,title
        //开启分页
        page: true,
        //渲染的容器是谁
        elem: '#articleList',
        //异步提交请求给后台返回JSON
        url: '../../users',
        //要显示的表头是什么
        cols: [[
            {type: 'checkbox'},
            {field: 'id', title: '用户编号'},
            {field: 'username', title: '用户名'},
            {field: '', title: '性别',templet: '#mySex'},
            {field: 'birthday', title: '出生日期',templet:"#createTime"},
            {field: 'img', title: '头像',templet:'<div><img src="{{ d.img}}"></div>',style:'height:8px;width:8px;line-height:8px!important;'},
            {field: 'country', title: '国籍'},
            {field: 'profile', title: '简介'},
            {field: 'tel', title: '电话'},
            {field: 'address', title: '地址'},
            {field: 'identity', title: '身份证号'},
            {field: 'isadmin', title: '权限',templet: '#myisadmin'},



            {title: '操作', templet: '#operateTpl'}
        ]]
        // ,done:function(res,curr,count){
        //     // var $statusCol = $("[data-field='status']");//商品状态这一列
        //     // console.log($statusCol.children());
        //     // console.log($("[data-field='status']").children());
        //     $("[data-field='status']").children().each(function(){
        //         // this 当前DOM对象
        //         //$(this) 当前jQuery对象
        //         // val() text() html() 三个函数都是既可以设值也可以取值
        //         // val() 一般用于文本框 单选按钮 复选按钮这些的取值
        //         // text() 一般是用于获取指定控件中的文本 <div><strong>hello</strong></div> text() ====> hello
        //         // html() 一般是用于获取指定控件中的标签和文本 <div><strong>hello</strong></div> html() ====> <strong>hello</strong>
        //         // console.log($(this).text());
        //         if($(this).text() == '1'){
        //             //正常
        //             $(this).text('正常');
        //         }else if($(this).text() == '2'){
        //             //下架
        //             $(this).text('下架');
        //         }
        //     });
        // }
    });

    //
    var active = {
        getCheckData: function () {
            //你点击了"批量删除"
            //为了获取到被选中的行
            var data = table.checkStatus("articleList").data;
            if (data.length > 0) {
                //确认框
                //至少选中一行
                //为了获得所有选中行的id
                var ids = [];
                for (var i = 0; i < data.length; i++) {
                    ids.push(data[i].id);
                }
                //异步提交到后台 ids
                $.post(
                    '../../item/batch',
                    {'ids[]': ids},
                    function (data) {
                        //至少删除一条记录
                        if (data > 0) {
                            //停留在原来页面刷新
                            $('.layui-laypage-btn').click();
                            layer.msg("恭喜，删除成功！", {icon: 1});
                        }

                    }
                );
            } else {
                //没有选中
                layer.msg("请选择至少一行后再批量删除！", {icon: 2});
            }
        },
        reload:function(){
            //模糊查询，提交一个异步请求到后台 {title}
            //val() 文本框 单选按钮 复选按钮
            //text()  html()
            var un = $("#un").val();
            //不为空
            if($.trim(un).length > 0 ){
                //文本框中有内容，表格重载
                table.reload("articleList",{
                    page:{curr:1},
                    where:{username:un}
                });
            }else{
                layer.msg("请输入关键字！", {icon: 2});
            }

        }
    };

    window.deluser = function(id){

        if(confirm("确认删除吗")){
            $.post(
                '../../del',
                {"id":id},
                function (data) {
                    //至少删除一条记录
                    if (data > 0) {
                        //停留在原来页面刷新
                        $('.layui-laypage-btn').click();
                    }

                }
            );
        };
    };

    //点击"批量删除"按钮触发的事件
    $(".demoTable .layui-btn-danger").on('click', function () {
        //为了获取data-type属性
        var type = $(this).data("type");//getCheckData
        //判断是否具有getCheckData，若有，那么直接调用，否则什么都不做
        active[type] ? active[type].call(this) : '';
    });

    //点击"模糊查询"按钮触发的事件
    $("#load").on('click', function () {
        //为了获取按钮的data-type属性
        var type = $(this).data("type");//reload
        //判断active变量中是否具有reload属性
        active[type] ? active[type].call(this) : '';
    });

    form.on('switch(status)',function(obj){
        layer.confirm('确认修改商品状态吗？', {icon: 3, title:'提示'}, function(index){
            //layer.msg('data');
            //console.log(data);
            var data = $(obj.elem);
            var id = data.parents('tr').first().find('td').eq(1).text();
            //layer.msg(id);
            var check = obj.elem.checked;
            var no=0;
            //console.log(check);
            if(check){
                no=1;
            }else{
                no=2;
            }
            $.post(
                '../../item/change',
                {"id":id,"status":no}
            );
            layer.close(index);
        });


        //if(confirm('确认修改商品状态吗？')){
        ////layer.msg('data');
        ////console.log(data);
        //var elem = $(data.elem);
        //var id = elem.parents('tr').first().find('td').eq(1).text();
        ////layer.msg(id);
        //var check = elem.checked;
        //var no=0;
        ////console.log(check);
        //if(check){
        //    no=1;
        //}else{
        //    no=2;
        //}
        //$.post(
        //    '../../item/change',
        //    {"id":id,"status":no}
        //);
        //}
    });


});