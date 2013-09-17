<style>
html,body,div,span,object,iframe,h1,h2,h3,h4,h5,h6,p,b,u,i,pre,a,sub,sup,dl,dt,dd,ol,ul,dir,li,fieldset,legend,form,label,table,tbody,tfoot,thead,tr,th,td,input,textarea,select,option {
	font-family:inherit,Arial,verdana,tahoma;color:#000000;	margin:0px;padding:0px;font-size:12px;line-height:20px;
}
a {color:#00f;text-decoration:none;cursor:pointer; border:0px solid #c3d9ff;}
a img{text-decoration:none;};
a:link {color:#00f;text-decoration:none;}
a:hover {color:#f00;text-decoration:none;}
a:active {color:#00f;text-decoration:none;}
a:visited {color:#00f;text-decoration:none;}
table {border-collapse:collapse;}
thead td{background:#c3d9ff;text-align:center;}
td {border:#BBCEDB solid 1px;padding:0px 2px 0px 2px;}
</style>
<body style = "padding:10px">
	<#--<p align=right> 
    <input type=button value=下载   onclick=document.execCommand('Saveas',false,'c:\\岗位说明书-${rhs["user"].name?if_exists}.htm')>
	</p>-->
<table>
<tr>
	<td valign=top width=300>
		<#macro digui_rule ruleNodes  flag >
			<#list ruleNodes as rule>
			  <br>${flag} <a href=rule_detail.do?id=${rule.id?if_exists} target=_blank>${rule.name?if_exists}</a>
			  <#if !(rule.getChildRules()?size<1)> 
				      <@digui_rule rule.getChildRules()?sort_by('sortNob'),flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" />	
				  </#if>
			</#list> 
		</#macro>
		
		<p><b>企业战略</b><#include "../../../file/ftl/strategy.ftl"></p>
		<p><b>企业愿景 </b><#include "../../../file/ftl/version.ftl"></p>
		<p><b>年度目标</b><#include "../../../file/ftl/target.ftl"></p>
		<br><b>规章制度</b>
		<@digui_rule rhs["ruleRootList"]?sort_by('sortNob'),""/>
		
	</td>
	<td>		
		<b>${rhs["user"].name?if_exists}</b> 
		<table width=600>
		    <thead>
			    <tr>
			    	<td width=80>工作手册</td>
			    	<td >绩效考核KPI</td>
			    </tr>
		    </thead>
				<tr>
					<td valign=top>
	
					${rhs["user"].positiondescription?if_exists}</td>
					<td valign=top>${rhs["user"].kpidescription?if_exists}</td>
				</tr>
					
		</table>
		<b>工作职责说明</b>
		<table width=600>
		    <thead>
		    <tr><td width=80>岗位</td><td >职位</td><td>详细</td></tr>
		    </thead>
			<#list rhs["user"].getRoles() as role>
			<tr>
				<td valign=top>
				    <#if role.getRolegroups()[0]?exists>		
						${role.getRolegroups()[0].name?if_exists}
					</#if>
				</td>
				<td valign=top>
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
	     <br>
		<#---->

	</td>
</tr>	
</table> 




  