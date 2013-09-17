<#include "../../../common/freemarker/include_header.ftl">
<#macro digui_rule ruleNodes  flag >
	<#list ruleNodes as rule>
	  ${flag} <a href="rule_detail.do?id=${rule.id?if_exists}" target=_blank>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;${rule.name?if_exists}</a><br>
	  <#if !(rule.getChildRules()?size<1)> 
		      <@digui_rule rule.getChildRules()?sort_by('sortNob'),flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
		  </#if>
	</#list> 
</#macro>
<script type="text/javascript">
	$(function(){
		$('#tabs').tabs();
	});
</script>

<body style = "padding:3px">
	<#--<p align=right> 
    <input type=button value=下载   onclick=document.execCommand('Saveas',false,'c:\\岗位说明书-${rhs["user"].name?if_exists}.htm')>
	</p>-->
<table width=100%>
<tr>
	<td valign=top width=70%  style = "padding:10px">

		<div id="tabs">
			<ul>
			    <li><a href="#tabs-5">工作手册</a></li>
			    <li><a href="#tabs-6">职位职责</a></li>			    
				<li><a href="#tabs-1">企业战略</a></li>
				<li><a href="#tabs-2">企业愿景</a></li>
				<li><a href="#tabs-3">年度目标</a></li>
				<li><a href="#tabs-4">个人绩效KPI</a></li>
				<li><a href="#tabs-7">规章制度</a></li>
				
			</ul>
			<div id="tabs-5">${rhs["user"].positiondescription?if_exists}</div>
			<div id="tabs-6">
				<table   class="table  table-condensed">
				    <thead>
				    <tr><th width=80>岗位</th><th width=80>职位</th><th>详细</th></tr>
				    </thead>
					<#list rhs["user"].getRoles() as role>
					<tr>
						<td valign=top>
						    <#if role.getRolegroups()[0]?exists>		
								${role.getRolegroups()[0].name?if_exists}
							</#if>
						</td>
						<td valign=top >
							${role.name}
						</td>
						<td valign=top>
						    <#if role.getRolegroups()[0]?exists&&role.getRolegroups()[0].positiondescription?exists>	
								<b>岗位技能要求</b><br>
								${role.getRolegroups()[0].positiondescription?if_exists}
							</#if>
						    <#if role.positiondescription?exists>	
								<b>职位工作内容</b><br>
								${role.positiondescription?if_exists}
							</#if>
						</td>
					</tr>	
					</#list>
				</table>				
			</div>
			<div id="tabs-1"><#include "../../../file/ftl/strategy.ftl"></div>
			<div id="tabs-2"><#include "../../../file/ftl/version.ftl"></div>
			<div id="tabs-3"><#include "../../../file/ftl/target.ftl"></div>
			<div id="tabs-4">${rhs["user"].kpidescription?if_exists}</div>
			<div id="tabs-7"><@digui_rule rhs["ruleRootList"]?sort_by('sortNob'),""/></div>
		</div>	
		
		
	</td>
	
</tr>	
</table> 




  