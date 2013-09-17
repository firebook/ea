<#include "../../../common/freemarker/include_header.ftl">
<form action="manager_tpltb3_save.do" method="post" class="well form-horizontal">
<fieldset>
	<legend>Edit tpltb3</legend>
	
	<input type="hidden" name="bfobject.id" value='<#if rhs["tpltb3"]?exists>${rhs["tpltb3"].id?if_exists}</#if>' />
	<input type="hidden" name="bfobject.projectId" value='<#if rhs["tpltb3"]?exists>${rhs["tpltb3"].projectId?if_exists}</#if>' />
	<div class="control-group">
		<label class="control-label">request-id</label>
		<div class="controls">
			<input type="text" name="bfobject.requestid" value='<#if rhs["tpltb3"]?exists>${rhs["tpltb3"].requestid?if_exists}</#if>' />
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">工单标题</label>
		<div class="controls">
			<input type="text" name="bfobject.title" value='<#if rhs["tpltb3"]?exists>${rhs["tpltb3"].title?if_exists}</#if>' />
		</div>
	</div>
 
	<div class="control-group">
		<label class="control-label">工单描述</label>
		<div class="controls">
			<textarea name="bfobject.requestDesc"><#if rhs["tpltb3"]?exists>${rhs["tpltb3"].requestDesc?if_exists}</#if></textarea>
		</div>
	</div>
	
	<div class="control-group">
		<label class="control-label">开始时间</label>
		<div class="controls">
			<input type="text" name="bfobject.startTime" value='<#if rhs["tpltb3"]?exists>${rhs["tpltb3"].startTime?if_exists}</#if>' 
				onclick="javascript:WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});" />
		</div>
	</div>
	
	<div class="control-group">
		<label class="control-label">优先级</label>
		<div class="controls">
			<input type="text" name="bfobject.priority" value='<#if rhs["tpltb3"]?exists>${rhs["tpltb3"].priority?if_exists}</#if>' />
		</div>
	</div>
	
	<div class="controls">
		<input type="submit" class="btn" value="保存"/>
		<a title="返回" class="btn" href="manager_tpltb3_list.do">返回</a> 		
	</div>
</fieldset>	
</form>
       