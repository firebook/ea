<#macro digui_rolegroup treeNodes  flag type>
	<#if type=="data"> 
		<#list treeNodes as node>
		  <#if  type="data"> 
			  <#if flag==""> 
			  <br><b>${node.name}</b>
			  <#else>
			  <br>${flag}${node.name}
			  </#if>
		  </#if>	
		  
		  <#if  !(node.getChildRolegroups()?size<1)> 
		      <@digui_rolegroup node.getChildRolegroups()?sort_by("id") ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ,type/>	
		  </#if>
		</#list> 
	</#if>
	
	<#if type=="check"> 
		<#list treeNodes as node>
		    <#if flag==""> 
		    <p><b>${node.name}</b></p>
		    <#else>
		    <input  name=rolegroup   type="checkbox"   value='${node.id}' /> ${node.name}
		   </#if>
		  <#if  !(node.getChildRolegroups()?size<1)> 
		      <@digui_rolegroup node.getChildRolegroups() ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ,type/>	
		  </#if>
		</#list> 
	</#if>
	
	<#if type=="checklevel"> 
		<#list treeNodes as node>
		    <#if flag==""> 
		    	<br><b>${node.name}</b>
		    <#else>
				<br>${flag}
			  	<input  name=rolegroup   type="checkbox"      value='${node.id}') /> ${node.name}
			  	
		   </#if>		
		   <#if  !(node.getChildRolegroups()?size<1)> 
		       <@digui_rolegroup node.getChildRolegroups() ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ,type/>	
		  </#if>		  
		  		
		  
		</#list>
	</#if>	
	<#if type=="input"> 
		<#list treeNodes as node>
		  <br>${flag}<a title="添加子节点" onclick="javascript:create_rolegroup(${node.id})"><img  src="../../image/add.gif" /></a>  
		   <lable>名称：</lable><input id="${node.id}name" value='${node.name}' onchange="javascript:update_rolegroup('${node.id}','name',this.value)" /> 
		   <lable>别名：</lable><input id="${node.id}alias" value='${node.alias}' onchange="javascript:update_rolegroup('${node.id}','alias',this.value)"/>
		
		  <#if  (node.getChildRolegroups()?size<1)> 
		    <a title="删除节点" onclick="javascript:delete_rolegroup(${node.id})"><img  src="../../image/delete.gif" /></a>  	
		  </#if>
		  <#if  !(node.getChildRolegroups()?size<1)> 
		      <@digui_rolegroup node.getChildRolegroups() ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ,type/>	
		  </#if>
		</#list> 
	</#if>	
</#macro>