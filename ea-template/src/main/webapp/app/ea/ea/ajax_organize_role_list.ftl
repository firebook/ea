

<#macro digui_role roleNodes  flag >
	<#list roleNodes as role>
	    <tr>
	    	<td >
	    		${flag} <input  value="${role.name?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_change_role('change_role_update.do','column=name&id=${role.id?if_exists}&columnValue='+this.value)" /> 
			</td>
			<td> <input  value="${role.alias?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_change_role('change_role_update.do','column=alias&id=${role.id?if_exists}&columnValue='+this.value)" /> 
			</td>
			<td>		 	     
  			<#if roleNodes?size?string=="1" > 
				<a onclick="javascript:action_change_role('change_role_level.do','id=${role.id?if_exists}');" class="ui-icon ui-icon-arrowthick-1-w" title=前1级 ></a>     
			<#else>
				<#assign index =role_index>                                                
			 	<#if index?string=="0">
			 	    <a  onclick="javascript:action_change_role('change_role_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index+1].id}')"     class="ui-icon ui-icon-arrowthick-1-s"  title=下移></a>
			  	    <a  onclick="javascript:action_change_role('change_role_level.do','id=${role.id?if_exists}')"       class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>   
			 	<#else>
			 	    <#if role_has_next>
				 	    <a  onclick="javascript:action_change_role('change_role_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
						<a  onclick="javascript:action_change_role('change_role_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index+1].id}')"  class="ui-icon ui-icon-arrowthick-1-s" title=下移></a>
					<#else>
					    <a onclick="javascript:action_change_role('change_role_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
					</#if>
					<a onclick="javascript:action_change_role('change_role_level.do','id=${role.id?if_exists}')"  class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>      
	 				<a onclick="javascript:action_change_role('change_role_level.do','id=${role.id?if_exists}&parentId=${roleNodes[role_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-e" title=后1级></a>	
			 	</#if>
			</#if>
		
			<#if (role.getChildRoles()?size<1)> 
				<a title="删除节点" onclick="javascript:action_change_role('change_role_delete.do','id=${role.id}');" class="ui-icon ui-icon-trash"  title=删除 ></a>
		  	</#if> 				

			</td>
		  <#if !(role.getChildRoles()?size<1)> 
		      <@digui_role role.getChildRoles()?sort_by('sortNob'),flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
		  </#if>
	</#list> 
</#macro>

<table class="table  table-condensed" >
     <thead>
		<tr>
			<tr><th width=150>角色名</th><th width=150>别名</th><th width=50>操作</th></tr>
		</tr>
	</thead>   
    
<@digui_role rhs["roleList"]?sort_by('sortNob'),"" />	

</table>
<span id="div_action_result" style="display:none">
	${rhs["info"]?if_exists}
</span>

<#--
<b>"${rhs["organize"].name?if_exists}"  下的职位列表如下：</b>
<table class="table  table-condensed">
    <thead>
	<tr><th width=150>角色名</th><th width=150>别名</th><th width=50>操作</th></tr>
	</thead>
	<#list rhs["organize"].getRoles() as role>
	<tr>
		<td><input style="width:140px" type="text" value="${role.name}" onchange="javascript:ajax_organize_role('${role.id}','name',this.value)"</td>
		<td><input style="width:140px" type="text" value="${role.alias}" onchange="javascript:ajax_organize_role('${role.id}','alias',this.value)"</td>
		<td>
			<a  onclick="javascript:delete_role('${role.id}')">左</a>
			<a  onclick="javascript:delete_role('${role.id}')">右</a>
			<a  onclick="javascript:delete_role('${role.id}')">删除</a>
		</td>
	</tr>
	</#list>	
</table>
<div id="div_result" style=""></div>
--->