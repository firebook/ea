<span class=list>${rhs["role"].name}成员列表：</span>
<#list rhs["role"].getUsers() as u>
<span class=list onclick="user_to_role('${rhs["role"].id}','${u.id}')">[${u.name}]</span>
</#list>



			