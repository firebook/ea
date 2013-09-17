<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Ericsson OA Sign In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="common/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

  </head>

  <body>
     <a href="app/manager/ea_report_birt_user.do" target=_blank>.</a>
    <div class="container">

      <form class="form-signin" name="loginForm" action="login.do" method="post">
       
        <hr>
        <input type="hidden" class="text" name=sysName value="oa">
        <input type="text" class="input-block-level" placeholder="Account" name=account value=admin >
        <input type="password" class="input-block-level" placeholder="Password" name=password value=abc123 >
        <!--
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        -->
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
        
        <#if rhs?exists>${rhs["tipInfo"]?if_exists}</#if>
      </form>

    </div> <!-- /container -->

  </body>
</html>
