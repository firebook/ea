
<#macro digui_tpltree1 tpltree1Nodes  flag >
	<#list tpltree1Nodes as tpltree1>
		 
	    <tr>
	    	<td width=700px>
	    		${flag} 名称<input  value="${tpltree1.name?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_tpltree1('update.do','column=name&id=${tpltree1.id?if_exists}&columnValue='+this.value)" /> 
					别名<input  value="${tpltree1.alias?if_exists}" 
			      style="WIDTH: 120px"  onchange="javascript:action_tpltree1('update.do','column=alias&id=${tpltree1.id?if_exists}&columnValue='+this.value)" /> 
			</td>
			<td width=200px>		 	     
  		  		<a  onclick="javascript:action_tpltree1('create.do','id=${tpltree1.id}');" class="ui-icon ui-icon-plus" ></a>
 			<#if (tpltree1.getChildTpltree1s()?size<1)> 
				<a title="删除节点" onclick="javascript:action_tpltree1('delete.do','id=${tpltree1.id}');" class="ui-icon ui-icon-trash"  title=删除 ></a>
		  	</#if> 				
			<#if tpltree1Nodes?size?string=="1" > 
				<a onclick="javascript:action_tpltree1('change_level.do','id=${tpltree1.id?if_exists}');" class="ui-icon ui-icon-arrowthick-1-w" title=前1级 ></a>     
			<#else>
				<#assign index =tpltree1_index>                                                
			 	<#if index?string=="0">
			 	    <a  onclick="javascript:action_tpltree1('change_rank.do','id_from=${tpltree1.id?if_exists}&id_to=${tpltree1Nodes[tpltree1_index+1].id}')"     class="ui-icon ui-icon-arrowthick-1-s"  title=下移></a>
			  	    <a  onclick="javascript:action_tpltree1('change_level.do','id=${tpltree1.id?if_exists}')"       class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>   
			 	<#else>
			 	    <#if tpltree1_has_next>
				 	    <a  onclick="javascript:action_tpltree1('change_rank.do','id_from=${tpltree1.id?if_exists}&id_to=${tpltree1Nodes[tpltree1_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
						<a  onclick="javascript:action_tpltree1('change_rank.do','id_from=${tpltree1.id?if_exists}&id_to=${tpltree1Nodes[tpltree1_index+1].id}')"  class="ui-icon ui-icon-arrowthick-1-s" title=下移></a>
					<#else>
					    <a onclick="javascript:action_tpltree1('change_rank.do','id_from=${tpltree1.id?if_exists}&id_to=${tpltree1Nodes[tpltree1_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
					</#if>
					<a onclick="javascript:action_tpltree1('change_level.do','id=${tpltree1.id?if_exists}')"  class="ui-icon ui-icon-arrowthick-1-w" title=前1级></a>      
	 				<a onclick="javascript:action_tpltree1('change_level.do','id=${tpltree1.id?if_exists}&parentId=${tpltree1Nodes[tpltree1_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-e" title=后1级></a>	
			 	</#if>
			</#if>
			</td>
		 
		  
		  <#if !(tpltree1.getChildTpltree1s()?size<1)> 
		      <@digui_tpltree1 tpltree1.getChildTpltree1s()?sort_by('sortNob'),flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
		  </#if>
	</#list> 
</#macro>
 
<table    class="table  table-condensed" style="width:1000px">
     <thead>
		<tr>
			<th>树型内容</th><th>操作</th>
		</tr>
	</thead>   
    
    
	<@digui_tpltree1 rhs["tpltree1RootList"]?sort_by('sortNob'),""/>
</table>
<span id="div_action_result" style="display:none">
	${rhs["info"]?if_exists}
</span>
