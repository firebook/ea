<#include "../../../common/freemarker/include_header.ftl">
<#assign userList =rhs["userList"]>
<div style="width:800px;padding:20px">
<h5>组长身份证列表</h5>
 <#list  userList as u>
	 <#list  u.getRoles() as y>
	 		 <#if  y.name=="teamleader" >${u.identityCard?if_exists};</#if>
	 </#list>  
</#list>  


<h5>所有人身份证列表</h5>
 <#list  userList as u>${u.name?if_exists}${u.identityCard?if_exists}<br></#list>  	

<h5>gtc身份证列表</h5>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&(u.company=="GTC")>${u.name?if_exists}${u.identityCard?if_exists}<br></#if>
	
</#list>  	
<h5>CBC身份证列表</h5>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&(u.company=="CBC")>${u.name?if_exists}${u.identityCard?if_exists}<br></#if>
	
</#list>  
<h5>odc身份证列表</h5>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&u.company=="odc" >${u.name?if_exists}${u.identityCard?if_exists}<br></#if>
	
</#list>  	

<h5>rayoo身份证列表</h5>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&u.company=="rayoo" >${u.name?if_exists}${u.identityCard?if_exists}<br></#if>
	
</#list>  	
</div>