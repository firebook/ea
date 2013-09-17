<html>
<head>
<link href="../../common/css/1.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body  style="padding-top:100px;text-align:center;">
 <form name="loginForm" action="login.do"  method="POST">
	<div style=" margin:3px;padding:20px; background-color:#E8EEFA;">
							<label>帐&nbsp;&nbsp;号</label>
							<input type="text" class="text" name=account value=admin>
					</br>
					
							<label>密&nbsp;&nbsp;码</label>
							<input type="password" class="password"  name=password value=abc123>
					</br></br>
					
							<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="hidden" class="text" name=sysName value="ea">
							<input type="submit" class="reset" value="登录" >
					</br>		
						<span style="font-weight:bold;color:red;">
							<#if rhs?exists>${rhs["tipInfo"]?if_exists}</#if>
						</span>			
					
	</div>			
</form>
</body>
</html>