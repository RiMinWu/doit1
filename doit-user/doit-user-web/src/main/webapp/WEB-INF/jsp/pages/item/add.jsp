<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加订单-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/treeselect.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/treeselect.js" charset="utf-8"></script>--%>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form"  id="form1" onsubmit="return false;">
        <input type="hidden" name="img" value="${src}">
        <div class="layui-form-item">
            <label for="un" class="layui-form-label">
                <span class="we-red">*</span>用户名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="un" name="username" lay-verify="nikename" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="s" class="layui-form-label">
                <span class="we-red">*</span>性别
            </label>
            <input type="radio" id="s" name="sex" value="0" title="男"checked>
            <input type="radio" id="" name="sex" value="1" title="女" >
        </div>
        <div class="layui-form-item">
            <label for="b" class="layui-form-label">
                <span class="we-red">*</span>出生日期
            </label>
            <div class="layui-input-inline">
                <input type="text" id="b" name="birthday" lay-verify="date" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="ct" class="layui-form-label">
                <span class="we-red">*</span>国籍
            </label>
            <div class="layui-input-inline">
                <input type="text" id="ct" name="country" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="pf" class="layui-form-label">简介</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入简介" id="pf" name="profile" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="we-red">*</span>电话
            </label>
            <div class="layui-input-inline">
                <input type="text" value="" id="phone" name="tel" required="" <%--lay-verify="number"--%> lay-verify="phone"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="addr" class="layui-form-label">
                <span class="we-red">*</span>地址
            </label>
            <div class="layui-input-inline">
                <input type="text" id="addr" name="address" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="iden" class="layui-form-label">
            <span class="we-red">*</span>身份证号
        </label>
            <div class="layui-input-inline">
                <input type="text" id="iden" name="identity" lay-verify="identity" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="we-red">*</span>密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="password" required="" lay-verify="pass"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                6到16个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="we-red">*</span>确认密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_repass" name="" required="" lay-verify="repass"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="isa" class="layui-form-label">
                <span class="we-red">*</span>权限
            </label>
            <input type="radio" id="isa" name="isadmin" value="0" title="管理员"checked>
            <input type="radio" id=" " name="isadmin" value="1" title="普通用户" >
        </div>
<%--        <div class="layui-form-item">
            <label for="image" class="layui-form-label">
                <span class="we-red">*</span>头像上传
            </label>
            <input type="file" id="image" name="img">
        </div>--%>
        <div class="layui-form-item layui-form-text">
            <label for="itemDesc" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <%--第一步--%>
                <textarea id="itemDesc" name="" class="layui-textarea" style="display: none"></textarea>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="add" class="layui-form-label">
            </label>
            <button id="add" class="layui-btn" lay-filter="add" lay-submit="">增加</button>
        </div>
    </form>
</div>
<script>
    layui.use('laydate',function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#b' //指定元素
        });
    });
</script>
<script>
    layui.extend({
        admin: '{/}../../static/js/admin',
        treeselect: '{/}../../static/js/treeselect'
    });
    layui.use(['form', 'admin','layer', 'layedit', 'treeselect','jquery'], function () {
        var form = layui.form,
            admin = layui.admin,
            layer = layui.layer,
            layedit = layui.layedit,
            $=layui.jquery,
            treeselect = layui.treeselect;

        //初始化树形下拉框
        treeselect.render(
            {
                elem: "#un1",
                data: [{ //节点
                    name: '父节点1',
                    spread: false
                    ,children: [{
                        name: '子节点11'
                    },{
                        name: '子节点12'
                    }]
                },{
                    name:'父节点2',
                    spread:false
                    ,children:[{
                        name: '子节点21'
                    }]
                }],
                method: "GET"
            });

//        第二步
//        初始化富文本编辑器
        layedit.build('itemDesc', {
            height: 100,//设置编辑器高度
            uploadImage:{
                url:'../../uploadImage',
                type:'post'
            }
        });
        $.fn.serializeObject = function()
        {
            var o = {};
            var a = this.serializeArray();
            $.each(a, function() {
                if (o[this.name]) {
                    if (!o[this.name].push) {
                        o[this.name] = [o[this.name]];
                    }
                    o[this.name].push(this.value || '');
                } else {
                    o[this.name] = this.value || '';
                }
            });
            return o;
        };

        //自定义验证规则
        form.verify({
            nikename: function(value){
                if(value.length < 5){
                    return '昵称至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(add)', function (data) {
            console.log(data);
            //发异步，把数据提交给php
            $.ajax({
                type:'POST',
                url:'../../item/add',
                data:JSON.stringify($("#form1").serializeObject()),
                contentType:'application/json'
            });

            layer.alert("增加成功", {
                icon: 6
            }, function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
                window.parent.location.reload();
            });
            return false;
        });

    });
</script>
</body>

</html>