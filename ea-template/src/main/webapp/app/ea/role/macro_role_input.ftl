<#macro digui_role roleNodes  flag >
	<#list roleNodes as role>
	    <tr>
	    	<td width=700px>
	    		${flag} 名称<input  value="${role.name?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_role('update.do','column=name&id=${role.id?if_exists}&columnValue='+this.value)" /> 
					别名<input  value="${role.alias?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_role('update.do','column=alias&id=${role.id?if_exists}&columnValue='+this.value)" /> 
			</td>
			<td width=200px>		 	     
  		  		<a  onclick="javascript:action_role('create.do','id=${role.id}');" class="ui-icon ui-icon-plus" ></a>
 			               
 			<#if (role.getChildRoles()?size<1)> 
				<a title="删除节点" onclick="javascript:action_role('delete.do','id=${role.id}');" class="ui-icon ui-icon-trash"  title=删除 ></a>
		  	</#if> 				
			<#if roleNodes?size?string=="1" > 
				<a onclick="javascript:action_role('change_level.do','id=${role.id?if_exists}');" class="ui-icon ui-icon-arrowthick-1-w" title=前1级 ></a>     
			<#else>
				<#assign index =role_index>                                                
			 	<#if index?string=="0">
			 	    <a  onclick="javascript:action_role('change_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index+1].id}')"     class="ui-icon ui-icon-arrowthick-1-s"  title=下移></a>
			  	    <a  onclick="javascript:action_role('change_level.do','id=${role.id?if_exists}')"       class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>   
			 	<#else>
			 	    <#if role_has_next>
				 	    <a  onclick="javascript:action_role('change_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
						<a  onclick="javascript:action_role('change_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index+1].id}')"  class="ui-icon ui-icon-arrowthick-1-s" title=下移></a>
					<#else>
					    <a onclick="javascript:action_role('change_rank.do','id_from=${role.id?if_exists}&id_to=${roleNodes[role_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
					</#if>
					<a onclick="javascript:action_role('change_level.do','id=${role.id?if_exists}')"  class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>      
	 				<a onclick="javascript:action_role('change_level.do','id=${role.id?if_exists}&parentId=${roleNodes[role_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-e" title=后1级></a>	
			 	</#if>
			</#if>
			</td>
		 
		  
		  <#if !(role.getChildRoles()?size<1)> 
		      <@digui_role role.getChildRoles()?sort_by('sortNob'),flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
		  </#if>
	</#list> 
</#macro>