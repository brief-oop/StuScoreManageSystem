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
    </style>

</head>
<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="list.do">Grade Manager</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
            <p class="app-sidebar__user-name">${User_Login.username}</p>
            <p class="app-sidebar__user-designation">${User_Login.identity}&nbsp;&nbsp;&nbsp;${User_Login.class_}班</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item active" href="list.do"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">主界面</span></a></li>
        <li><a class="app-menu__item" href="getinfo.do"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">用户中心</span></a></li>
        <li><a class="app-menu__item" href="/logout.do"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">退出系统</span></a></li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> 主界面</h1>
            <p>main page</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="list.do">main page</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <div class="widget-small warning coloured-icon"><i class="icon fa fa-files-o fa-3x"></i>
                <div class="info">
                    <h4>挂科数</h4>
                    <p><b>${fails}</b></p>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="widget-small danger coloured-icon"><i class="icon fa fa-star fa-3x"></i>
                <div class="info">
                    <h4>平均分</h4>
                    <p><b>${average}</b></p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="tile">
                <h3 class="tile-title">成绩表</h3>
                <table>

                    <tr>
                        <th>学号</th>
                        <th>高等数学</th>
                        <th>大学英语</th>
                        <th>软件工程</th>
                    </tr>

                        <tr>
                            <td>${grades.id}</td>
                            <td>${grades.math}</td>
                            <td>${grades.english}</td>
                            <td>${grades.computer}</td>

                        </tr>

                </table>
            </div>
        </div>
        <div class="col-md-6">
            <div class="tile">
                <h3 class="tile-title">友情链接</h3>
                <table>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>工大官网</td>
                        <td><a href="http://www.hut.edu.cn/" target="_blank">进入</a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>工大教务处</td>
                        <td><a href="http://jwc.hut.edu.cn/" target="_blank">进入</a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>工大教务管理系统</td>
                        <td><a href="http://218.75.197.123:83/" target="_blank">进入</a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
<script src="../js/plugins/pace.min.js"></script>
</body>
</html>
