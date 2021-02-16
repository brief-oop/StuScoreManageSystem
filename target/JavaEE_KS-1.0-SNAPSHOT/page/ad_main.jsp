<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/6/1
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>学生成绩管理系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <style type="text/css">
        table td,th{
            padding: 15px;
        }
        .fm{
            display: none;
        }
        form input{
            margin: 4px;
        }
    </style>
    <script>
        function display() {
            var a=document.getElementsByClassName("fm")[0].style.display;
            if(a==""||a=="none"){
                document.getElementsByClassName("fm")[0].style.display="block";
            }else {
                document.getElementsByClassName("fm")[0].style.display="none";
            }
        }
        function display2(data1,data2,data3,data4,data5) {
            var a=document.getElementsByClassName("fm")[1].style.display;
            var b="data2";
            if(a==""||a=="none"){
                document.getElementsByClassName("fm")[1].style.display="block";
            }else {
                document.getElementsByClassName("fm")[1].style.display="none";
            }
            document.getElementById("id").value=data1;
            document.getElementById("id_").value=data1;
            document.getElementById("name").value=data2;
            document.getElementById("math").value=data3;
            document.getElementById("english").value=data4;
            document.getElementById("computer").value=data5;
        }
    </script>
</head>
<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="th_list.do">Grade Manager</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
            <p class="app-sidebar__user-name">${User_Login.username}</p>
            <p class="app-sidebar__user-designation">${User_Login.identity}</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item active" href="th_list.do"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">成绩管理</span></a></li>
        <li><a class="app-menu__item" href="getListInfo_S.do"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">学生管理</span></a></li>
        <li><a class="app-menu__item" href="getListInfo_T.do"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">教师管理</span></a></li>
        <li><a class="app-menu__item" href="addUser.jsp"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">添加用户</span></a></li>
        <li><a class="app-menu__item" href="/logout.do"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">退出系统</span></a></li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i>成绩管理</h1>
            <p>grade manager</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="th_list.do">grade manager</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <div class="widget-small primary coloured-icon"><i class="icon fa fa-users fa-3x"></i>
                <div class="info">
                    <h4>总人数</h4>
                    <p><b>${Num}</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small info coloured-icon"><i class="icon fa fa-thumbs-o-up fa-3x"></i>
                <div class="info">
                    <h4>合格人数</h4>
                    <p><b>${Qualified}</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small warning coloured-icon"><i class="icon fa fa-files-o fa-3x"></i>
                <div class="info">
                    <h4>挂科人数</h4>
                    <p><b>${Fail}</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3" id="er">
            <div class="widget-small danger coloured-icon"><i class="icon fa fa-star fa-3x"></i>
                <div class="info">
                    <h4>年级平均分</h4>
                    <p><b>${Average}</b></p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="tile">
                <h3 class="tile-title">成绩表&nbsp;&nbsp;&nbsp;<input type="button" value="新增" onclick="display()"></h3>
                <table class="table">
                    <thead>
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>高等数学</th>
                        <th>大学英语</th>
                        <th>软件工程</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${grades}" var="grade">
                        <tr>
                            <td>${grade.id}</td>
                            <td>${grade.name}</td>
                            <td>${grade.math}</td>
                            <td>${grade.english}</td>
                            <td>${grade.computer}</td>
                            <td>
                                <input type="button" value="修改" onclick="display2(${grade.id},'${grade.name}',${grade.math},${grade.english},${grade.computer})">
                            </td>
                            <td>
                                <a href="/page/deleteCourse.do?id=${grade.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-6">
            <div class="tile">
                <h3 class="tile-title">新增</h3>
                <form action="/page/saveCourse.do" method="post" class="fm">
                    <hr style=" border-top:5px ridge #009933;" /><br/>

                    学号：<pre style="display: inline;">    </pre><input type="text" name="id" ><br>
                    姓名：<pre style="display: inline;">    </pre><input type="text" name="name" ><br>
                    高等数学：<input type="text" name="math" ><br>
                    大学英语：<input type="text" name="english" ><br>
                    软件工程：<input type="text" name="computer" ><br>
                    <input type="submit" value="提交">
                </form>
                <hr style="height:1px;border:none;border-top:1px dashed #29A739;">
                <h3 class="tile-title">修改</h3>
                <form action="/page/editCourse.do" method="post" class="fm">
                    <input type="hidden" id="id_" name="id_">
                    <hr style=" border-top:5px ridge #009933;" /><br/>

                    学号：<pre style="display: inline;">    </pre><input type="text" name="id" id="id"><br>
                    姓名：<pre style="display: inline;">    </pre><input type="text" name="name" id="name"><br>
                    高等数学：<input type="text" name="math" id="math"><br>
                    大学英语：<input type="text" name="english" id="english"><br>
                    软件工程：<input type="text" name="computer" id="computer"><br>
                    <input type="submit" value="提交">
                </form>
            </div>
        </div>
    </div>
</main>
<script src="../js/plugins/pace.min.js"></script>
</body>
</html>
