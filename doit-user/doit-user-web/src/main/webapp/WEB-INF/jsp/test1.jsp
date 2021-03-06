<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>开始使用layui</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
</head>
<body>
<%--添加空的容器--%>
<button id="btn" class="layui-btn layui-btn-danger layui-icon-delete layui-btn-lg layui-btn-radius">批量删除</button>
<table id="demo" lay-filter="test"></table>
<%--导入js--%>
<script src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script>
    //    按需加载组件
    layui.use(['table'], function(){
        var table = layui.table;
        table.render({
            // elem\url\page\cols表格属性
            // field\title 表头属性
            //渲染的目标
            elem:'#demo',
            //异步请求
            url:'./items',
            //是否分页
            page:true,
            //表头
            cols:[[
                //{id:'123','name':'iphonex'}
                {type:'checkbox'},
                {field:'id',title:'商品编号'},
                {field:'title',title:'商品名称'},
                {field:'sellPoint',title:'商品卖点'},
                {field:'catName',title:'商品分类'},
                {field:'status',title:'商品状态',templet:'#myTpl'}
            ]]
        });
    });
    $("#btn").on("click",function(){
        var type = $(this).data("type");
        active[type]?active[type].call(this):"";
    })


</script>

<script type="text/html" id="myTpl">
    <div class="layui-form">
        <input type="checkbox" name="itemStatus" id="itemStatus" lay-skin="switch" lay-text="正常|下架"
               {{1==d.status?'checked':''}}/>
    </div>
</script>
</body>
</html>