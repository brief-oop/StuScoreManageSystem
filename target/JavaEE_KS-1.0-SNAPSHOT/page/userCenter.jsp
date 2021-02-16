<%--
Created by IntelliJ IDEA.
User: DELL
Date: 2020/6/1
Time: 16:09
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    #fm1,#fm2{
      display: none;
    }
    form input{
      margin: 4px;
    }
  </style>
  <script>
    function display1() {
        var a=document.getElementById("fm1").style.display;
        if(a==""||a=="none"){
            document.getElementById("fm1").style.display="block";
        }else {
            document.getElementById("fm1").style.display="none";
        }
    }
    function display2() {
        var a=document.getElementById("fm2").style.display;
        if(a==""||a=="none"){
            document.getElementById("fm2").style.display="block";
        }else {
            document.getElementById("fm2").style.display="none";
        }
    }
    function fun_() {
        var s="${User_Login.identity}";
        if (s=="teacher"){
            window.location.assign("th_list.do");
        }else if (s="student"){
            window.location.assign("list.do");
        }
    }
  </script>

</head>
<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="javascript:fun_()">Grade Manager</a>
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
    <li><a class="app-menu__item" href="javascript:fun_()"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">主界面</span></a></li>
    <li><a class="app-menu__item active" href="getinfo.do"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">用户中心</span></a></li>
    <li><a class="app-menu__item" href="/login.jsp"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">退出系统</span></a></li>
  </ul>
</aside>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i>用户中心</h1>
      <p>user center</p>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
      <li class="breadcrumb-item"><a href="javascript:fun_()">main page</a></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-6">
      <div class="tile">
        <h3 class="tile-title">个人信息</h3>
        <table>

          <tr>
            <th>${th}</th>
            <th>年龄</th>
            <th>性别</th>
            <th>汉族</th>
            <th>电话</th>
          </tr>

            <tr>
              <td>${info.id}</td>
              <td>${info.age}</td>
              <td>${info.sex}</td>
              <td>${info.nation}</td>
              <td>${info.phone}</td>
              <td>
                 <input type="button" value="修改" onclick="display1()">
              </td>
            </tr>

        </table>
        <form action="/page/updateInfo.do" method="post" id="fm1">
          <hr style=" border-top:5px ridge #009933;" /><br/>
          <input type="hidden" name="id" value="${info.id}">

          年龄：<input type="text" name="age" value="${info.age}"><br>
          性别：<input type="text" name="sex" value="${info.sex}"><br>
          民族：<input type="text" name="nation" value="${info.nation}"><br>
          电话：<input type="text" name="phone" value="${info.phone}"><br>
          <input type="submit" value="提交">
        </form>
      </div>
    </div>
    <div class="col-md-6">
      <div class="tile">
        <h3 class="tile-title">账户信息</h3>
        <table>

          <tr>
            <th>${th}</th>
            <th>账户名</th>
            <th>密码</th>
            <th>身份</th>
            <th>班级</th>
          </tr>

          <tr>
            <td>${User_Login.id}</td>
            <td>${User_Login.username}</td>
            <td>${User_Login.password}</td>
            <td>${User_Login.identity}</td>
            <td>${User_Login.class_}</td>
            <td>
              <input type="button" value="修改" onclick="display2()">&nbsp;&nbsp;<font color="red">${msg}</font>
            </td>
          </tr>

        </table>
        <form action="/page/editUser.do" method="post" id="fm2">
          <hr style=" border-top:5px ridge #009933;" /><br/>
          <input type="hidden" name="id" value="${User_Login.id}">

          密码：<pre style="display: inline;">    </pre><input type="password" name="password" ><br>
          确认密码：<input type="password" name="surepassword" ><br>
          <input type="submit" value="提交">
        </form>
      </div>
    </div>
  </div>
</main>
<script src="../js/plugins/pace.min.js"></script>
</body>
</html>
