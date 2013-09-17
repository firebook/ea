<#include "../../../common/freemarker/include_header.ftl">
<form action="ea_user_save.do" method="post" class="well form-horizontal">
<fieldset>
	<legend>Edit user</legend>
	
	<input type="hidden" name="bfobject.id" value='<#if rhs["user"]?exists>${rhs["user"].id?if_exists}</#if>' />
	
		<div class="control-group">
		<label class="control-label">account</label>
		<div class="controls">
			<input type="text" name="bfobject.account" value='<#if rhs["user"]?exists>${rhs["user"].account?if_exists}</#if>' />
		</div>
	</div>
	
	
 
	<div class="control-group">
		<label class="control-label">身份证</label>
		<div class="controls">
			<input type="text" name="bfobject.identityCard" value='<#if rhs["user"]?exists>${rhs["user"].identityCard?if_exists}</#if>' />
		</div>
	</div>

 	<div class="control-group">
		<label class="control-label">生日</label>
		<div class="controls">
			<input type="text" name="bfobject.birthDate" value='<#if rhs["tpltb3"]?exists>${rhs["tpltb3"].birthDate?if_exists}</#if>' 
				onclick="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});" />
		</div>
	</div>
	
	
	<div class="controls">
		<input type="submit" class="btn" value="保存"/>
		<a title="返回" class="btn" href="manager_user_list.do">返回</a> 		
	</div>
</fieldset>	
</form>
       