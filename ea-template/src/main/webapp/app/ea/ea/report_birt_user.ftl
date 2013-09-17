换行,姓名,帐号,公司,组,team,角色列表,角色组列表,level,生日,入职时间,性别,技术
<#list rhs["dataList"] as x>
<br>,${x.name?if_exists},${x.account?if_exists},${x.companyname?if_exists},${x.groupname?if_exists} ,${x.teamname?if_exists} ,${x.allrole?if_exists},${x.allrolegroup?if_exists},${x.assessLev?if_exists},${x.birthDate?if_exists},${x.rollDate?if_exists},${x.sex?if_exists} ,${x.techname?if_exists} 
</#list> 