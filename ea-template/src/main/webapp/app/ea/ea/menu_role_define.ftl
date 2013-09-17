<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<#include "../../../common/freemarker/include_header.ftl">
<style type="text/css">
<!--
body {background: none;font-size:12px;}
ul {clear: left;margin: 0px 0px 0px;padding: 0px;background: #fff;}
ul ul {border-top: 1px solid green;}
ul.solo {border-top: 0;}
li {float: left;list-style: none;position: relative;}
li li {margin: -1px 0 0 0;}
div {}
div.section {padding: 1px 5px;}
div.first {background: url(images/first.gif) 50% repeat-y;margin-left: 0;}
div.last {background: url(images/last.gif) 50% repeat-y;margin-right: 0;}
div.root {padding-top: 0;}
/*IE 6 (when comma-separated, IE6 didn't work, so these are duped for IE7)*/
*html  {text-align: center;}
*html  a {margin: 0; position: relative;}
/*IE 7*/
*:first-child+html  {text-align: center;}
*:first-child+html  a {margin: 0; position: relative;}
-->
</style>
<#macro digui_role_v treeNodes  flag >
   	<#list treeNodes as role>
   	    <li><div>&nbsp;</div></li>
	    <li>			  
	  	    <div class="section" style="color:green;">  
	  	  <a title="职责编辑" href="ea_edit_bean_property.do?objectname=Role&op=r&propertyname=positiondescription&id=${role.id}" target=_blank> ${role.name}</a><br>
		    </div> 
  		</li>
		<#if !(role.getChildRoles()?size<1)> 
		    <ul>
		        <@digui_role_v role.getChildRoles()?sort_by("id") ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"/>	
		    </ul>
		</#if>
	</#list> 
</#macro>

<div style="padding:10px">
<p align=center><b>请点击“职位”进行职责编辑</b></p>
<#list rhs["roleGroupRootList"]?sort_by("sortNob") as rolegroup>
    <p align=left><b>${rolegroup.name}<b><br></p>
	<table width=2000px>
		<tr>
			<td>
			<#list rolegroup.getChildRolegroups() as subrolegroup>
				<ul><@digui_role_v subrolegroup.RootRoles()?sort_by("sortNob"),''/></ul>
			</#list>
			</td>
		</tr>
	</table>		
</#list> 
</div>





<#--
<#include "include_view_tree_css.ftl">
<table width=4000px>
	<tr>
		<td>
			<ul>  
				<li>
					<div >职位说明编辑</div> 
					<ul>  
					
					<@digui_rolegroup_v rhs["roleGroupRootList"],"","position", "Role"/>	
					</ul>
			    </li>
			</ul> 
		</td>
	</tr>
</table>
-->