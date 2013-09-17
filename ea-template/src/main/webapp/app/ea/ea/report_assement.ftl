<#include "../../../common/freemarker/include_header.ftl">
<link href="<@context/>common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<@context/>common/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<body style = "text-align: center;padding:10px">
	
<#include "include_report_link.ftl">


<b>EHMS项目人员信息总表</b><br>

<table class="table table-condensed table-hover" style="width:800px">
<tr><th>teamname</th><th>name</th><th>level</th><th>分数 </th><th>评语</th><th>项目经验</th></tr>
<#list rhs["dataList"]?sort_by("teamname") as x>
    <#if x.teamname!=''>
		<tr> <#--${rhs["dataList"][x_index+1]}-->
		    <td width=110px><#if lastobject.teamname==x.teamname><#else>${x.teamname?if_exists}</#if></td>
			<td width=110px>${x.name?if_exists}(${x.companyname?if_exists})</td>
		    <td width=50px>${x.assessLev?if_exists}</td>
		    <td width=50px>${x.score?if_exists}</td>
		    <td width=200px>${x.mark?if_exists}</td>
		    <td width=400px>${x.experience?if_exists}</td>
		</tr>
	</#if>
	<#assign lastobject=x />
</#list>

</table>
</body>
</div>