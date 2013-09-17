<#include "../../../common/freemarker/include_header.ftl">

<script type="text/javascript" src="<@context_module/>ea.js"></script>
<p align=center><b>组织架构分类设置</b></p>
<br>   

<#macro digui_organize organizeNodes flag>
            <#list organizeNodes as organize> 
                <tr>
                <#if organize.name?has_content && organize.name!="部门" && organize.name!="项目">
			  	 	<td width=300px>${flag}${organize.name?if_exists}</td>
			  	 	<#assign b=false>
			  		<#list rhs["organizegroupAllList"] as organizegroup>
					    <td >
					  		<#assign b=false>
					  		<#list  organizegroup.getOrganizes() as organizeObject>
					             <#if organizeObject.id==organize.id><#assign b=true></#if>
					        </#list> 
							 <input type="checkbox" onclick="javascript:ajax_put_organize_to_organizegroup(${organize.id},${organizegroup.id})" <#if  b>checked</#if>>
					     </td>
					     
					</#list>
			    </#if>
			    </tr>
				<#if !(organize.getChildOrganizes()?size<1)> 
				    <@digui_organize organize.getChildOrganizes()?sort_by("id") ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;"/>	
				</#if>
			</#list> 
</#macro>


 <table   class="table  table-condensed" >
     <thead>
	    <tr><th></th>
	
		<#list rhs["organizegroupAllList"] as organizegroup>
		<th>${organizegroup.name?if_exists}</th>
	    </#list>
	    </tr>
	  </thead>
	
	<@digui_organize rhs["organizeRootList"] , "&nbsp;&nbsp;&nbsp;&nbsp;"/>
</table>