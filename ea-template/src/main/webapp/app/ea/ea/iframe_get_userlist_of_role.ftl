<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript">
	    function createUserRolegroupRelation(userId,roleId) {
		$.ajax({
	        type:"POST",
	     	url: "ea_ea_create_user_role_relation.do",
	     	data:"userId="+userId+"&roleId="+roleId,
	     	cache: false,
	     	success: function(html){
	     	  //document.getElementById('div_organize_rolelist').innerHTML=html;   
	     	 
	       }	
	    });  
	}
</script> 	

   	<#list  rhs["userList"]?sort_by("name") as user>
   	       <input type="checkbox"  
		   	<#list  rhs["role"].getUsers() as x>
		  		<#if x.id==user.id> checked</#if>
			</#list>
		   		onclick="createUserRolegroupRelation(${user.id},${rhs["role"].id});" >
		   <lable>${user.name?if_exists}</lable> </input>
   	</#list>
   	<br>
<p align=center>
             <input type=button value=保存 onclick="javascript:parent.window.hs.close();parent.window.document.location.reload()"  />
</p>
<br><br>