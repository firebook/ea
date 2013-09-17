<#include "../../../common/freemarker/include_header.ftl">

<#include "include_report_link.ftl">
<#macro digui_orgnaize treeNodes  flag type>
	<#list treeNodes as node>
		<#list node.getRoles() as role>
				   
					 <span id=${role.id} ><img src=<@context/>common/images/gif/role.gif />${role.name}(${role.getUsers()?size}人)</span>
	                 <br> 
					 <table   class="table  table-condensed" >
					    <thead>
					    <tr>
				        	<th width=100px>姓名</th>
				        	<th width=60px>年龄</th>
				        	<th width=60px>工作年限</th>
				        	<th width=100px>公司</th>
				        	<th width=100px>team</th>
				        	<th ></th>
					    </tr>
					    </thead>
					    <#list role.getUsers()?sort_by("teamname") as u>
					    <tr>
				        	<td> ${u.name}</td>
					    	<td>${javacall["com.common.time.Time"].getStrHowManyYearToNow(u.birthDate)}岁</td>
					    	<td>${javacall["com.common.time.Time"].getStrHowManyYearToNow(u.graduateDate)}年</td>
					    	<td> ${u.companyname}</td>
					    	<td> ${u.teamname}</td>
					    	<#--
					    	<td title="<#if javacall["com.common.time.Time"].getConstellationNumber(u.birthDate)!="">${rhs["system_para_map"]["constellation"][javacall["com.common.time.Time"].getConstellationNumber(u.birthDate)]}</#if>">
					    	${javacall["com.common.time.Time"].getConstellation(u.birthDate)}
					    	-->
					    	<td>
					    	<#if  rhs["system_para_map"]["constellation"]?exists>
					    		<#if javacall["com.common.time.Time"].getConstellationNumber(u.birthDate)!="">${rhs["system_para_map"]["constellation"][javacall["com.common.time.Time"].getConstellationNumber(u.birthDate)]}</#if>
					    	</#if>
					    	</td>
					    </tr>
					    </#list>
						
				      </table>
				       
		  </#list>
			
		  
		  <#if !(node.getChildOrganizes()?size<1)> 
		      <@digui_orgnaize node.getChildOrganizes()?sort_by('sortNob') ,flag+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ,type/>	
		  </#if>
	</#list> 
</#macro>



		    <@digui_orgnaize rhs["organizeRootList"],"","map_person_deploy"/>
	

