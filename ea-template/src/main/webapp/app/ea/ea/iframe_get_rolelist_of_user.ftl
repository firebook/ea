<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript">
	    function createUserRolegroupRelation(userId,roleId) {
		$.ajax({
	        type:"POST",
	     	url: "ea_create_user_role_relation.do",
	     	data:"userId="+userId+"&roleId="+roleId,
	     	cache: false,
	     	success: function(html){
	     	  //document.getElementById('div_organize_rolelist').innerHTML=html;      
	       }	
	    });  
	}
</script> 	

	    
<#macro digui_rolegroup rolegroupNodes  flag >
	<#list rolegroupNodes as rolegroup>
	    <tr>
	    	<td width=200px>
	    		${flag}
	    		${rolegroup.name?if_exists}
			</td>
			<td>
			   <#list rolegroup.getRoles() as role>
			   		<br><input type=checkbox
			   			<#list  rhs["user"].getRoles() as x>
					  		<#if x.id==role.id> checked</#if>
						</#list>
					   		onclick="createUserRolegroupRelation(${rhs["user"].id},${role.id});" 
					   		
			   		 />${role.name?if_exists}
			   </#list> 
			   
	    	</td>
	    </tr>
		  <#if !(rolegroup.getChildRolegroups()?size<1)> 
		      <@digui_rolegroup rolegroup.getChildRolegroups()?sort_by('sortNob'),flag+"&nbsp;&nbsp;" />	
		  </#if>
	</#list> 
</#macro>

<table    class="table  table-condensed" style="width:700px">
    	<thead>
			<tr>
				<th>岗位</th>
		        <th>设置职位</th>
			</tr>
		</thead>
    <@digui_rolegroup rhs["rolegroupRootList"]?sort_by('sortNob'),"" />	
</table>
<br><br>