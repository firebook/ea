
<#macro context><#if request?exists>${request.getContextPath()}/<#else></#if></#macro>
<#macro context_module><#if request?exists>${request.getRequestURI()[0..request.getRequestURI()?last_index_of("/")]}<#else></#if></#macro>

<#macro input_user mutiple>
	<script type='text/javascript' >
		$(function() {
			$(".user").autocomplete(names,{
				minChars: 0,
				width: 150,
				multiple:${mutiple},
				multipleSeparator:",",			
				max: 20,
				matchContains: true,
				autoFill: false,
				formatItem: function(row) {
					return  row.name + "(" + row.account + ")";
				},
				formatMatch: function(row) {
					return row.name + " " + row.account;
				},
				formatResult: function(row) {
				   
					return row.name ;
				}
			});
		});
		var names = [
		<#list  Session["userList"]?sort_by('name') as u>
		{ name: "${u.name?if_exists}", account: "${u.account?if_exists}" , id:"${u.id?if_exists}"}<#if u_has_next>,<#else> </#if>
		</#list>
		];
	</script>
</#macro>

<#macro getName account>
	  <#list  Session["userList"] as user>
		   <#if  user.account==account> 
		     ${user.name?if_exists}
		   </#if>
	   </#list>
</#macro>

<#assign language_map= {
		"zh-cn":"中文",
		"zh-tw":"繁体",
		"en":"English",  
		"jp":"日文",
		"es":"Español"
	   	}
> 


