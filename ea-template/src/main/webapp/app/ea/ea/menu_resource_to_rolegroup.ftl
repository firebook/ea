<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="resource/resource.js"></script>
<script type="text/javascript" src="ea/ea_resource_to_rolegroup.js"></script>
<script type="text/javascript" >
  var rolegroup;
</script>
<#macro digui_resource resourceNodes  flag >
	<#list resourceNodes as resource>
		<br>${flag}<a title="添加子节点" onclick="javascript:create_resource(${resource.id})"><img  src="../../image/add.gif" /></a>  
		<label>名称：</lable><input value="${resource.name}"  onchange="javascript:update_resource('${resource.id}','name',this.value)" class="text" /> 
		<label>&nbsp;&nbsp;&nbsp;&nbsp;别名：</lable><input value="${resource.alias}" onchange="javascript:update_resource('${resource.id}','alias',this.value)" class="text" />
		<label>&nbsp;&nbsp;&nbsp;&nbsp;ActionUrl：</lable><input style="width:200px;" value="${resource.actionUrl}" onchange="javascript:update_resource('${resource.id}','actionUrl',this.value)" class="text" />
	  	<#if (resource.getChildResources()?size<1)> 
			<a title="删除节点" onclick="javascript:delete_resource(${resource.id});"><img  src="../../image/delete.gif" /></a>
	  	</#if> 
	  	<input type="button" value="角色组授权" class="button" onclick="javascript:rolegroup='${resource.id?if_exists}';get_resource_rolegroup_list(${resource.id?if_exists});">
	  	<#if !(resource.getChildResources()?size<1)> 
			<@digui_resource resource.getChildResources()?sort_by("id") ,flag+"&nbsp;&nbsp;&nbsp;"/>	
		</#if> 
	</#list> 
</#macro>
<br>
<table>
<tr>
<td valign=top >
	<input type="button" class="button" onclick="javascript:create_resource('root')" value="添加根节点">
	<div id=div_resource_tree>
		<@digui_resource rhs["resourceRootList"],""/>	
		<div id="div_resource_result" style="font-weight:bold;color:red;"></div>
	</div>
</td>
<td valign=top width=250>
	<div id=div_resource_rolegroup_tree></div>	
</td>
</tr>
</table>