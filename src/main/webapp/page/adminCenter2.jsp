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
      function display(data1,data2,data3,data4,data5) {
          var a=document.getElementsByClassName("fm")[0].style.display;
          if(a==""||a=="none"){
              document.getElementsByClassName("fm")[0].style.display="block";
          }else {
              document.getElementsByClassName("fm")[0].style.display="none";
          }
          document.getElementsByClassName("id_")[0].value=data1;
          document.getElementsByClassName("identity_s")[0].value="${iden}";
          document.getElementsByClassName("id")[0].value=data1;
          document.getElementsByClassName("age")[0].value=data2;
          document.getElementsByClassName("sex")[0].value=data3;
          document.getElementsByClassName("nation")[0].value=data4;
          document.getElementsByClassName("phone")[0].value=data5;
      }
      function display2(data1,data2,data3,data4,data5) {
          var a=document.getElementsByClassName("fm")[1].style.display;
          if(a==""||a=="none"){
              document.getElementsByClassName("fm")[1].style.display="block";
          }else {
              document.getElementsByClassName("fm")[1].style.display="none";
          }
          document.getElementById("id_").value=data1;
          document.getElementsByClassName("identity_s")[1].value="${iden}";
          document.getElementById("id").value=data1;
          document.getElementById("username").value=data2;
          document.getElementById("password").value=data3;
          document.getElementById("identity").value=data4;
          document.getElementById("class_").value=data5;
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
    <li><a class="app-menu__item" href="th_list.do"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">成绩管理</span></a></li>
    <li><a class="app-menu__item" href="getListInfo_S.do"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">学生管理</span></a></li>
    <li><a class="app-menu__item active" href="getListInfo_T.do"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">教师管理</span></a></li>
    <li><a class="app-menu__item" href="/login.jsp"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">退出系统</span></a></li>
  </ul>
</aside>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i>教师管理</h1>
      <p>tea manager</p>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
      <li class="breadcrumb-item"><a href="th_list.do">tea manager</a></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-6">
      <div class="tile">
        <h3 class="tile-title">管理个人信息</h3>
        <table class="table">
          <thead>
          <tr>
            <th>学号</th>
            <th>年龄</th>
            <th>性别</th>
            <th>汉族</th>
            <th>电话</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${infos}" var="info">
            <tr>
              <td>${info.id}</td>
              <td>${info.age}</td>
              <td>${info.sex}</td>
              <td>${info.nation}</td>
              <td>${info.phone}</td>
              <td>
                <input type="button" value="修改" onclick="display(${info.id},${info.age},'${info.sex}','${info.nation}','${info.phone}')">
              </td>
              <td>
                <a href="/page/dlStu.do?id=${stu.id}">删除</a>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
        <form action="/page/manaInfo.do" method="post" class="fm">
          <hr style=" border-top:5px ridge #009933;" /><br/>
          <input type="hidden" name="id_" class="id_">
          <input type="hidden" class="identity_s" name="identity_s">

          学号：<input type="text" name="id" class="id"><br>
          年龄：<input type="text" name="age" class="age"><br>
          性别：<input type="text" name="sex" class="sex"><br>
          民族：<input type="text" name="nation" class="nation"><br>
          电话：<input type="text" name="phone" class="phone"><br>
          <input type="submit" value="提交">
        </form>
      </div>
    </div>
    <div class="col-md-6">
      <div class="tile">
        <h3 class="tile-title">管理账户信息</h3>
        <table class="table">
          <thead>
          <tr>
            <th>学号</th>
            <th>账户名</th>
            <th>密码</th>
            <th>身份</th>
            <th>班级</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${teas}" var="tea">
            <tr>
              <td>${tea.id}</td>
              <td>${tea.username}</td>
              <td>${tea.password}</td>
              <td>${tea.identity}</td>
              <td>${tea.class_}</td>
              <td>
                <input type="button" value="修改" onclick="display2(${tea.id},'${tea.username}','${tea.password}','${tea.identity}','${tea.class_}')">
              </td>
              <td>
                <a href="/page/dlStu.do?id=${tea.id}">删除</a>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
        <form action="/page/updateUser.do" method="post" class="fm">
          <input type="hidden" id="id_" name="id_">
          <input type="hidden" class="identity_s" name="identity_s">
          <hr style=" border-top:5px ridge #009933;" /><br/>

          学号：<pre style="display: inline;">  </pre><input type="text" name="id" id="id"><br>
          账户名：<input type="text" name="username" id="username"><br>
          密码：<pre style="display: inline;">  </pre><input type="text" name="password" id="password"><br>
          身份：<pre style="display: inline;">  </pre><input type="text" name="identity" id="identity"><br>
          班级：<pre style="display: inline;">  </pre><input type="text" name="class_" id="class_"><br>
          <input type="submit" value="提交">
        </form>
      </div>
    </div>
  </div>
</main>
<script src="../js/plugins/pace.min.js"></script>
</body>
</html>
