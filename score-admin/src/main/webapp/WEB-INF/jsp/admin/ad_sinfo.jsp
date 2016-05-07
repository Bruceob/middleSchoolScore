<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/ad_index.css" />

    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/jquery.page.js"></script>

</head>

<body>

<div class="ad_rt">
    <div style="margin:30px 30px 20px;">
        <button class="btn btn-success size" data-toggle="modal" data-target="#mymodal" style="margin-right:10px;">添加学生信息</button>
    </div>

    <table class="panel panel-info s_xx">
        <thead class="panel-heading size" style="padding:0 16px 49px 5px;">
            <td>学号</td>
            <td style="width:8%;">姓名</td>
            <td style="width:4%;">性别</td>
            <td>班级</td>
            <td>入学时间</td>
            <td style="width:8%;">政治面貌</td>
            <td style="width:16%;">身份证号</td>
            <td style="width:18%;">籍贯</td>
        </thead>
        <div class="clear"></div>
            <tbody id="list"></tbody>
    </table>
    <div class="tcdPageCode"></div>
</div>
<!--模态弹框  添加学生信息-->
<div class="modal" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" style="color:#27AE60">添加学生信息</h4>
            </div>
            <form class="form-inline">
                <div class="modal-body add_stu">
                    <ul>
                        <li>
                            <label class="size">学号：</label><input class="form-control" type="text" />
                            <label class="size" style="margin-left:20px">姓名：</label><input class="form-control" type="text" />
                        </li>
                        <li>
                            <div style="width:274px;display:inline-block">
                                <label class="size">性别：</label>
                                <select>
                                    <option>男</option>
                                    <option>女</option>
                                </select>
                            </div>
                            <label class="size">班级：</label>
                            <select>
                                <option>高一</option>
                                <option>高二</option>
                                <option>高三</option>
                            </select>
                            <select>
                                <option></option>
                                <option></option>
                            </select>


                        </li>
                        <li>
                            <div style="width:274px;display:inline-block">
                                <label class="size">政治面貌：</label>
                                <select>
                                    <option>共青团员</option>
                                    <option>党员</option>
                                    <option>群众</option>
                                </select>
                            </div>
                            <label class="size">入学时间：</label>
                            <select>
                                <option></option>
                                <option></option>
                                <option></option>
                            </select>
                            <select>
                                <option></option>
                                <option></option>
                                <option></option>
                            </select>
                        </li>
                        <li><label class="size">身份证号：</label><input class="form-control" type="text" /></li>
                        <li><label class="size">籍贯：</label><input style="width:370px;" class="form-control" type="text" /></li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-default size">重置</button>
                    <button type="submit" class="btn btn_qd" style="color:#fff">添加</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--模态弹框  修改学生信息-->
<div class="modal" id="mymoda2" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" style="color:#27AE60">修改学生信息</h4>
            </div>
            <form class="form-inline">
                <div class="modal-body alt_stu">
                    <ul>
                        <li>
                            <label class="size">学号：</label><input class="form-control id" type="text" name="id" />
                            <label class="size" style="margin-left:20px">姓名：</label><input class="form-control name"name="name" type="text"  />
                            <label class="size">年龄：</label><input class="form-control id" type="number" name="age" />
                        </li>
                        <li>
                            <div style="width:274px;display:inline-block">
                                <label class="size">性别：</label>
                                <select name="sex">
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select>
                            </div>
                            <label class="size">班级：</label>
                            <select name="className" class="className">
                                <option>高一</option>
                                <option>高二</option>
                                <option>高三</option>
                            </select>
                            <select name="grade" class="grade">
                                <option value="1">1</option>
                                <option  value="2">2</option>
                                <option value="3">3</option>
                                <option  value="4">4</option>
                                <option value="5">5</option>
                                <option  value="6">6</option>
                                <option value="7">7</option>
                                <option  value="8">8</option>
                                <option value="9">9</option>
                                <option  value="10">10</option>
                                <option value="11">11</option>
                                <option  value="12">12</option>
                            </select>
                        </li>
                        <li>
                            <div style="width:274px;display:inline-block">
                                <label class="size">政治面貌：</label>
                                <select name="politicalLandscape">
                                    <option value="共青团员">共青团员</option>
                                    <option value="党员">党员</option>
                                    <option value="群众">群众</option>
                                </select>
                            </div>
                            <label class="size">入学时间：</label>

                        </li>
                        <li><label class="size">身份证号：</label><input class="form-control" type="text" name="idCard" /></li>
                        <li><label class="size">籍贯：</label><input style="width:370px;" class="form-control" type="text" name="birthPlace" /></li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-default size">重置</button>
                    <button type="submit" class="btn btn_qd" style="color:#fff">确定</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--模态弹框 删除提示-->
<div class="modal" id="mymoda3" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:400px">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4>确认删除该学生信息？</h4>
            </div>
            <div class="modal-footer">
                <form>
                    <button class="btn btn-default size" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn_qd" style="color:#fff">确定</button>
                </form>
            </div>

        </div>
    </div>
</div>
<input type="text" value="${count}" id="count">
<script>
    $(document).ready(function() {
        $.ajax({
            url: "http://localhost:8080/admin/student/getAll",
            data: {},
            type: 'POST',
            success: function (data) {
                if (data != null) {
                    $("#list").empty();
                    $.each(data.data.datas, function (index, item) {
                        $("#list").append('<tr>');
                        $("#list").append('<td>' + item.id + '</td>');
                        $("#list").append('<td>' + item.name + '</td>');
                        $("#list").append('<td>' + item.sex + '</td>');
                        $("#list").append('<td>' + item.className + item.grade + '</td>');
                        $("#list").append('<td>' + item.sex + '</td>');
                        $("#list").append('<td>' + item.datesAttendance + '</td>');
                        $("#list").append('<td>' + item.politicalLandscape + '</td>');
                        $("#list").append('<td>' + item.idCard + '</td>');
                        $("#list").append('<td>' + item.birthPlace + '</td>');
                        $("#list").append('<button class="btn btn-info" data-toggle="modal" data-target="#mymoda2" style="margin:10px 10px 10px 16px;" onclick="update(' + item.id + ')">修改</button>');
                        $("#list").append(' <button class="btn btn-warning" data-toggle="modal" data-target="#mymoda3">删除</button>');
                        $("#list").append('</tr>');
                    })
                }
            }
        })
    })


    $(".tcdPageCode").createPage({
        pageCount: $("#count").val(),
        current: 1,
        backFn: function (p) {
            $.ajax({
                url: "http://localhost:8080/admin/student/getAll",
                data: {
                    offset: p
                },
                type: 'POST',
                success: function (data) {
                    if (data != null) {
                        $("#list").empty();
                        $.each(data.data.datas, function (index, item) {
                            $("#list").append('<tr>');
                            $("#list").append('<td>' + item.id + '</td>');
                            $("#list").append('<td>' + item.name + '</td>');
                            $("#list").append('<td>' + item.sex + '</td>');
                            $("#list").append('<td>' + item.className + item.grade + '</td>');
                            $("#list").append('<td>' + item.sex + '</td>');
                            $("#list").append('<td>' + item.datesAttendance + '</td>');
                            $("#list").append('<td>' + item.politicalLandscape + '</td>');
                            $("#list").append('<td>' + item.idCard + '</td>');
                            $("#list").append('<td>' + item.birthPlace + '</td>');
                            $("#list").append('<button class="btn btn-info" data-toggle="modal" data-target="#mymoda2" style="margin:10px 10px 10px 16px;" onclick="update(' + item.id + ')">修改</button>');
                            $("#list").append(' <button class="btn btn-warning" data-toggle="modal" data-target="#mymoda3">删除</button>');
                            $("#list").append('</tr>');
                        })
                    }
                }
            })
        }
    })


    var update=function(id){
        console.log(id);
        $.ajax({
            url: "http://localhost:8080/admin/student/getOne",
            data: {
                id:id,
            },
            type: 'POST',
            success: function (data) {
                $(".id").val(data.data.id);
                $(".name").val(data.data.name)
                $(".sex").val(data.data.sex);
                $(".name").val(data.data.name);
                $(".name").val(data.data.name);
                $(".name").val(data.data.name);
                $(".name").val(data.data.name);;
            }
        })
    };


</script>
</body>
</html>
