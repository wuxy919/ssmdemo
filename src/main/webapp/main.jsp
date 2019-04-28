<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/28
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
    <link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>
<body>
<div class="layui-container" style="width: 700px;height: 600px;margin-top: 0px;padding-top: 60px;">
    <table class="layui-hide" id="test" lay-filter="test"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
    </script>
    <script src="layui/layui.js" charset="utf-8"></script>
    <script>
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#test'
                ,url:'/user/findAll'
                ,title: '用户列表'
                ,cols: [[
                    {field:'id', width:100, title: '编号', sort: true}
                    ,{field:'username', width:200, title: '姓名'}
                    ,{field:'password', width:100, title: '密码'}
                    ,{field:'age', width:100, title: '年龄'}
                    ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:200}
                ]]
                ,page: true
            });

            //监听行工具事件
            table.on('tool(test)', function(obj){
                var data = obj.data;
                if(obj.event === 'edit'){
                    window.location.href="/user/findById/"+data.id;
                }
                if(obj.event === 'delete'){
                    layer.confirm('确定删除该行数据吗？', function(index){
                        window.location.href="/user/deleteById/"+data.id;
                        layer.close(index);
                    });
                }
            });
        });
    </script>

</div>
</body>
</html>
