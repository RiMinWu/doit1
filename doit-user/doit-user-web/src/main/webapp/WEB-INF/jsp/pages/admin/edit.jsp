<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-后台管理系统-Admin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/weadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/css/layui.css" charset="utf-8"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form" id="form2"  <%--action="${pageContext.request.contextPath}/modify"--%> onsubmit="return false;">
        <input type="hidden" name="id" value="${user.id}">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="we-red">*</span>用户名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="username" required="" lay-verify="required"
                       autocomplete="off" value="${user.username}" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                <span class="we-red">*</span>将会成为您唯一的登录名
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s" class="layui-form-label">
                <span class="we-red">*</span>性别
            </label>
            <c:if test="">

            </c:if>
                <input type="radio" id="s" name="sex" value="0" title="男"checked>
                <input type="radio" id="" name="sex" value="1" title="女" >
        </div>
        <%--<div class="layui-form-item">
            <label for="b" class="layui-form-label">
                <span class="we-red">*</span>生日
            </label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" name="birthday" lay-verify="required" autocomplete="off" id="b">
            </div>
        </div>--%>
        <div class="layui-form-item">
            <label for="ct" class="layui-form-label">
                <span class="we-red">*</span>国籍
            </label>
            <div class="layui-input-inline">
                <input type="text" id="ct" name="country" value="${user.country}" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="" class="layui-form-label">简介</label>
            <div class="layui-input-block">
                <img src="${user.img}">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="itemDesc" class="layui-form-label">描述</label>
            <div class="layui-input-block">
                <%--第一步--%>
                <textarea id="itemDesc" name="" class="layui-textarea" style="display: none"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="addr" class="layui-form-label">
                <span class="we-red">*</span>地址
            </label>
            <div class="layui-input-inline">
                <input type="text" id="addr" name="address" value="${user.address}" lay-verify="number" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="iden" class="layui-form-label">
                <span class="we-red">*</span>身份证号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="iden" name="identity" value="${user.identity}" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="isa" class="layui-form-label">
                <span class="we-red">*</span>权限
            </label>
            <input type="radio" id="isa" name="isadmin" value="0" title="管理员"checked>
            <input type="radio" id=" " name="isadmin" value="1" title="普通用户" >
        </div>



        <div class="layui-form-item">
            <label for="phone" class="layui-form-label">
                <span class="we-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" value="${user.tel}" id="phone" name="tel" required="" lay-verify="phone"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <%--<div class="layui-form-item">
            <label for="opass" class="layui-form-label">
                <span class="we-red">*</span>旧密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="opass" name="password" required="" lay-verify="pass"
                       autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                6到16个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="we-red">*</span>新密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="pass" required="" lay-verify="pass"
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
                <input type="password" id="L_repass" name="repass" required="" lay-verify="repass"
                       autocomplete="off" class="layui-input">
            </div>
        </div>--%>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <%--<input type="submit" id="L_repass" value="修改"/>--%>
            <button  id="L_repass" class="layui-btn" lay-filter="add" lay-submit="">
                修改
            </button>
        </div>
    </form>
</div>
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#b' //指定元素
        });
    });
</script>
<script type="text/javascript">
    layui.extend({
        admin: '${pageContext.request.contextPath}/static/js/admin'
    });
    layui.use(['form','layer','admin','jquery'], function(){
        var form = layui.form,
            admin = layui.admin,
            layer = layui.layer,
             $ = layui.jquery;
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

        $.fn.serializeObject = function(){
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

        //监听提交
        form.on('submit(add)', function (data) {
            console.log(data);
            //发异步，把数据提交给php
            $.ajax({
                type:'POST',
                url:'${pageContext.request.contextPath}/edit/modify',
                data:JSON.stringify($("#form2").serializeObject()),
                contentType:'application/json'
            });
            layer.alert("增加成功", {
                icon: 6
            }, function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });


        /*//监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            $.post(
                    '../../modify',
                    {"id":id,"status":no}
            );
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });*/

    });
</script>
<!--时间格式化-->
<script id="createTime" type="text/html">
    <div>{{layui.util.toDateString(d.birthday,'yyyy-MM-dd')}}</div>
</script>
</body>

</html>