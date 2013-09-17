<#macro digui_rolegroup rolegroupNodes  flag >
		<#list rolegroupNodes as rolegroup>
		  <br>${flag}
		  	<input type="checkbox"  
		   	<#list  rhs["rolegroup"] as rolegroupRelation>
		  		<#if rolegroupRelation.alias==rolegroup.alias> checked</#if>
			</#list>
		   onclick="action_ea_resource_relation('ea_ea_create_resource_rolegroup_relation.do','resourceId='+resourceId+'&rolegroupId='+${rolegroup.id});">
		   		
		
		   		
		   <lable>${rolegroup.name}</lable>
		  <#if  !(rolegroup.getChildRolegroups()?size<1)> 
		      <@digui_rolegroup rolegroup.getChildRolegroups() ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
		  </#if>
		</#list> 
</#macro>	
<b>${rhs["resource"].getName()?if_exists} -[角色组授权]</b>

<#include "include_resource_edit.ftl">
<#if rhs["rolegroup"]?exists> 
	<div id=div_resource_rolegroup_tree>
	<@digui_rolegroup rhs["roleGroupRootList"],""/>
	</div>	 	
</#if>




		