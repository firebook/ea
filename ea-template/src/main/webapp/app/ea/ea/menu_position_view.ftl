<#include "include_view_tree_css.ftl">

<p align=left><b>岗位说明书</b></p> 
<br>
<ul>  
<@digui_rolegroup_v rhs["roleGroupRootList"],"","view_postion"/>	
</ul>
<br><br><br>
<#macro digui_tb_rolegroup treeNodes  flag type>
	<#list treeNodes as node>
	      <tr>
	          <#if flag==""> 
		         <td align=center  valign=top width=100>
		         	<b>${node.name}</b>
		         </td>
		         <td align=center><b>岗位说明书</b></td>
		         <td align=center><b>KPI</b></td>
			  <#else>
			      <td align=left>
				 	
				  </td>
				  <td align=left valign=top>
				    <b>${node.name}  (岗位) </b><br><br>
				    ${node.positiondescription?if_exists}
				  </td>
				  <td align=left valign=top width=400>
				    <b>${node.name} （kpi）</b><br><br>
				    ${node.kpidescription?if_exists}
				  </td>				  
			  </#if>
		  	
		  </tr>		  
		  <#if !(node.getChildRolegroups()?size<1)> 
		      <@digui_tb_rolegroup node.getChildRolegroups()?sort_by("id") ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp" ,type/>	
		  </#if>
	</#list> 
</#macro>
<table width=100%>
    <tr><td colspan=3 align=left><br><b>各岗位说明列表</b><br></td></tr>
	<@digui_tb_rolegroup rhs["roleGroupRootList"],"","map_person_deploy"/>
</table>




