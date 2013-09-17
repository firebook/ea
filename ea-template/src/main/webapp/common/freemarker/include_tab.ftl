<#if RequestParameters["subsystemname"]?exists>	
    <ul>		
	<#assign num=0/>
	<#list Session["menuList"]?sort_by('sortNob') as node>
	    <#if node.getParentModel()?exists&&node.getParentModel().alias?exists&&node.getParentModel().alias==RequestParameters["subsystemname"]>
	   		<#if num==0>
	   		 <li><a href="#tabs-1">${node.name?if_exists}</a></li>
	   		<#else>
  			   	<li><a href="${node.actionUrl?if_exists}">${node.name?if_exists}</a></li>
  			</#if>
  			<#assign num=num+1/>
	    </#if>
	</#list>
	</ul>
</#if>