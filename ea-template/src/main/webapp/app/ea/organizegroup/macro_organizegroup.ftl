<#macro digui_organizegroup organizegroupNodes  flag >
	<#list organizegroupNodes as organizegroup>
	    <tr>
	    	<td width=700px>
	    		${flag} 名称<input  value="${organizegroup.name?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_organizegroup('update.do','column=name&id=${organizegroup.id?if_exists}&columnValue='+this.value)" /> 
					别名<input  value="${organizegroup.alias?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_organizegroup('update.do','column=alias&id=${organizegroup.id?if_exists}&columnValue='+this.value)" /> 
			</td>
			<td width=200px>		 	     
  		  		<a  onclick="javascript:action_organizegroup('create.do','id=${organizegroup.id}');" class="ui-icon ui-icon-plus" ></a>
 			<#if (organizegroup.getChildOrganizegroups()?size<1)> 
				<a title="删除节点" onclick="javascript:action_organizegroup('delete.do','id=${organizegroup.id}');" class="ui-icon ui-icon-trash"  title=删除 ></a>
		  	</#if> 				
			<#if organizegroupNodes?size?string=="1" > 
				<a onclick="javascript:action_organizegroup('change_level.do','id=${organizegroup.id?if_exists}');" class="ui-icon ui-icon-arrowthick-1-w" title=前1级 ></a>     
			<#else>
				<#assign index =organizegroup_index>                                                
			 	<#if index?string=="0">
			 	    <a  onclick="javascript:action_organizegroup('change_rank.do','id_from=${organizegroup.id?if_exists}&id_to=${organizegroupNodes[organizegroup_index+1].id}')"     class="ui-icon ui-icon-arrowthick-1-s"  title=下移></a>
			  	    <a  onclick="javascript:action_organizegroup('change_level.do','id=${organizegroup.id?if_exists}')"       class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>   
			 	<#else>
			 	    <#if organizegroup_has_next>
				 	    <a  onclick="javascript:action_organizegroup('change_rank.do','id_from=${organizegroup.id?if_exists}&id_to=${organizegroupNodes[organizegroup_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
						<a  onclick="javascript:action_organizegroup('change_rank.do','id_from=${organizegroup.id?if_exists}&id_to=${organizegroupNodes[organizegroup_index+1].id}')"  class="ui-icon ui-icon-arrowthick-1-s" title=下移></a>
					<#else>
					    <a onclick="javascript:action_organizegroup('change_rank.do','id_from=${organizegroup.id?if_exists}&id_to=${organizegroupNodes[organizegroup_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
					</#if>
					<a onclick="javascript:action_organizegroup('change_level.do','id=${organizegroup.id?if_exists}')"  class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>      
	 				<a onclick="javascript:action_organizegroup('change_level.do','id=${organizegroup.id?if_exists}&parentId=${organizegroupNodes[organizegroup_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-e" title=后1级></a>	
			 	</#if>
			</#if>
			</td>
		 
		  
		  <#if !(organizegroup.getChildOrganizegroups()?size<1)> 
		      <@digui_organizegroup organizegroup.getChildOrganizegroups()?sort_by('sortNob'),flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
		  </#if>
	</#list> 
</#macro>