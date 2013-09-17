
<#macro macro_resource_role_list organizeList  flag >
	<#list organizeList as orga>
	      <#if flag==""> 
	         <br><b>${orga.name}</b>
		  <#else>
			  <br>${flag}${orga.name}
			  <#list orga.getRoles() as role>
			     <br>${flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"}
			     
			    <input type="checkbox"  
				   	<#list  rhs["role"] as roleRelation>
				  		<#if roleRelation.alias==role.alias> checked</#if>
					</#list>
		   		
			     onclick="action_ea_resource_relation('ea_ea_create_resource_role_relation.do','resourceId='+resourceId+'&roleId='+${role.id});">
		   
			     <span id=${role.id} >[${role.name}]</span>
			  </#list>
		  </#if>	
		  <#if !(orga.getChildOrganizes()?size<1)> 
		      <@macro_resource_role_list orga.getChildOrganizes()?sort_by("id") ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
		  </#if>
	</#list> 
</#macro>

<b>${rhs["resource"].getName()?if_exists} -[对角色授权]</b>
<#include "include_resource_edit.ftl">
<@macro_resource_role_list rhs["organizeRootList"],""/>

		