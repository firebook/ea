<#include "include_view_tree_css.ftl">

<#macro digui_rolegroup treeNodes  flag type>
	<#if type=="data"> 
		<#list treeNodes as rolegroup>
		  <#if  type="data"> 
		      <li><div>&nbsp;</div></li>
			  <li>			  
				  <#if flag==""> 
					 <div class="section" style="color:green;"><b>${rolegroup.name}组织架构</b></div>  
				  <#else>
					  	  <div class="section" style="color:green;"> 
						  	   ${rolegroup.name} 
						  </div>  
						  <#--    -->
					  	  <#if rolegroup.getRoles()?sort_by("alias")?size<1 >					  	  
					  	  <#else>	
					  	         <ul>
		 							<#list rolegroup.getRoles()?sort_by("alias") as role>
			 							<li>
									  	  <div class="section">${role.name}(${role.getUsers()?size}人)
									  	     <#--<#list role.getOrganizes()?sort_by("alias") as organize>${organize.getParentModel().getName()}-${organize.getName()}</#list>-->
									  	  <br> <#list role.getUsers() as u><a href="#">${u.name}</a><br></#list>
									  	  </div>  
					                  	</li>
					                </#list>
					             </ul> 	
						  </#if>	
				  </#if>
	  		  </li>
		  </#if>	
		  <#if  !(rolegroup.getChildRolegroups()?size<1)> 
		      <ul>
		      <@digui_rolegroup rolegroup.getChildRolegroups()?sort_by("id") ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ,type/>	
		      </ul>
		  </#if>
		</#list> 
	</#if>
</#macro>
<table width=4000px>
<tr>
<td>
	<ul>  
		<li>
			<div class=title><b>员工职责定义</b></div> 
			<ul>  
				<@digui_rolegroup rhs["roleGroupRootList"],"","data"/>	
			</ul>
	    </li>
	</ul> 
   <br><br> 
</td>
</tr>
</table>


