<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="no-js">
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>login</title>
  <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
  <link rel="stylesheet" type="text/css" href="css/demo.css"/>
  <!--必要样式-->
  <link rel="stylesheet" type="text/css" href="css/component.css"/>
  <!--[if IE]>
  <script src="js/html5.js"></script>
  <![endif]-->
</head>
<body>
<div class="container demo-1">
  <div class="content">
    <div id="large-header" class="large-header">
      <canvas id="demo-canvas"></canvas>
      <div class="logo_box">
        <h3>欢迎你</h3>
        <form action="login" name="f" method="post">
          <div class="input_outer">
            <span class="u_user"></span>
            <input name="account" class="text" style="color: #FFFFFF !important" type="text"
                   placeholder="请输入账户">
          </div>
          <div class="input_outer">
            <span class="us_uer"></span>
            <input name="password" class="text"
                   style="color: #FFFFFF !important; position:absolute; z-index:100;" value=""
                   type="password" placeholder="请输入密码">
          </div>
          <div class="mb2">
            <!--                        <a class="act-but submit" href="javascript:;" style="color: #FFFFFF">登录</a>-->
            <button type="submit" class="act-but submit" id="button" style="color: #FFFFFF";width="330px">登陆</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div><!-- /container -->
<%
  session = request.getSession();
  String acconut = (String)session.getAttribute("account");
  if(acconut !=null)
  {
    response.sendRedirect("login");
  }
%>
<script>
  var error = '<%=request.getParameter("error")%>';
  if(error=='yes'){
    alert("Account or password wrong!");
  }
</script>
<script src="js/TweenLite.min.js"></script>
<script src="js/EasePack.min.js"></script>
<script src="js/rAF.js"></script>
<script src="js/demo-1.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>