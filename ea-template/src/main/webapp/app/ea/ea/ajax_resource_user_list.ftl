<b>${rhs["resource"].getName()?if_exists} -[对人员授权]</b>
<#include "include_resource_edit.ftl">
   	<#list  rhs["usersList"] as user>
   	       <input type="checkbox"  
		   	<#list  rhs["resource"].getUsers() as x>
		  		<#if x.account==user.account> checked</#if>
			</#list>
		   		onclick="action_ea_resource_relation('ea_ea_create_resource_user_relation.do','resourceId='+resourceId+'&userId='+${user.id});">
		   <lable >${user.name?if_exists}</lable> </input>
   	</#list>
 