<#include "../../../common/freemarker/include_header.ftl">
<#assign userList =rhs["userList"]>
<div style="width:800px;padding:20px">
<hr>组长邮件列表<hr>
 <#list  userList as u>
	 <#list  u.getRoles() as y>
	 		 <#if  y.name=="teamleader" >${u.email?if_exists};</#if>
	 </#list>  
</#list>  


<hr>所有人邮件列表<hr>
 <#list  userList as u>${u.email?if_exists};</#list>  	

<hr>gtc邮件列表<hr>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&(u.company=="GTC")>${u.email?if_exists};</#if>
	
</#list>  	
<hr>CBC邮件列表<hr>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&(u.company=="CBC")>${u.email?if_exists};</#if>
	
</#list>  
<hr>odc邮件列表<hr>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&u.company=="odc" >${u.email?if_exists};</#if>
	
</#list>  	

<hr>rayoo邮件列表<hr>
 <#list  userList as u>
	
	 		 <#if  (u.company?exists)&&u.company=="rayoo" >${u.email?if_exists};</#if>
	
</#list>  	
</div>