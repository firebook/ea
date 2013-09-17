<#include "../../../common/freemarker/include_header.ftl">
<#include "../rolegroup/macro_rolegroup.ftl">

<#macro digui_orgnaize treeNodes  flag type>
	<#list treeNodes as node>
			  
			  <#if flag==""> 
			  <br><b>${node.name}</b>
			  <#else>
			  <br>${flag}<input name=organize type="radio" onclick="javascript:organizeId='${node.id?if_exists}';ajax_organize_role_list('${node.id}')"   value=${node.id} />${node.name}
			  </#if>	
		  <#if !(node.getChildOrganizes()?size<1)> 
		      <@digui_orgnaize node.getChildOrganizes()?sort_by('sortNob') ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ,type/>	
		  </#if>
	</#list> 
</#macro>

<script type="text/javascript" src="<@context_module/>ea.js"></script>

<body style="padding:20px">

	<table>
	    <tr>
	    	<td colspan=2 style="padding:2px;width:500px ">
			<span style="color:green"id=create-new-tip> 说明： 【职位】=【组织架构】+【岗位】  请先选择【组织架构】,再选择【岗位】,点击右边'创建职位'，
			  即可以在相应【组织架构】下建立【职位】 .
			  <br>
			  </span>
			  
			 <p align=right>&nbsp;&nbsp;<a  onclick="bat_create_role();" title="【职位】=【组织架构】+【岗位】 "  ><image   src=<@context/>common/images/icon/09952.ico />&nbsp;创建职位</a>
	    	</p>
	    	</td>
	    	<td valign=bottom>
	    	<#--
	    	<button id="button" onclick="bat_create_role();">创建职位</button>
	    	-->
	    	
	    	</td>
	    </tr>
		<tr>
			<td valign=top width=250px >
				<div id=panle_rolegroup style="border:#ccc solid 1px;padding:5px;">
				    <b> 【组织架构】</b><br>
			    	<@digui_orgnaize rhs["organizeRootList"]?sort_by("sortNob"),"","radio"/>	
				</div>		
			</td>			
			<td valign=top width=240px style="padding-left:5px">
			    <div id=panle_organize style="border:#ccc solid 1px;padding:5px;display:">
				    <b>【岗位】</b> <br>
			    	<@digui_rolegroup rhs["roleGroupRootList"]?sort_by("sortNob"),"","checklevel"/>
			    	
					<div id="div_action_result" style="font-weight:bold;color:red;"></div>
					<br>
				</div>
			</td>
			<td valign=top style="padding-left:10px;" >
			    <div >
					<div id="div_organize_result" style="font-weight:bold;"></div>
					
					<div id="div_organize_rolelist" ></div>
				</div>	
			</td>
		</tr>
	</table>	
