<#include "../../../common/freemarker/include_header.ftl">

技术人员表
<table>
	<tr>
	<#list rhs["organizelist"]  as organize>
	 <td valign=top>   
				<#list organize.getRoles() as role>
					<b>${role.name?if_exists}(${role.getUsers()?size}人)</b><br>
				    <table>
					    <thead>
							<tr>
								<td >姓名</td>
							    <td >公司-team</td>
							    <td >工作经验</td>
							    <td >入职年限</td>
							
							</tr>
						</thead>				       
				       <#list role.getUsers()?sort_by("ext2") as u>
			    		<tr>				       
						      <td>${u.name?if_exists}-${u.ext2?if_exists}岁</td>
						      <td>${u.company?if_exists} -${u.ext1?if_exists}</td>
						       <td>${u.ext3?if_exists}</td>
						      <td>${u.ext4?if_exists}</td>
						</tr>
					   </#list>
				    </table> 
				</#list>
				
	</td>	
	</#list> 
	
	</tr>
</table>       