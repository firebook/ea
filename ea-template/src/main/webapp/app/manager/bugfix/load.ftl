<#include "../../../common/freemarker/include_header.ftl">
<form action="manager_bugfix_save.do" method="post" class="well form-horizontal">
<fieldset>
	<legend>Edit Bugfix</legend>
	
	<input type="hidden" name="bfobject.id" value='<#if rhs["bugFix"]?exists>${rhs["bugFix"].id?if_exists}</#if>' />
	<input type="hidden" name="bfobject.projectId" value='<#if rhs["bugFix"]?exists>${rhs["bugFix"].projectId?if_exists}</#if>' />
	<div class="control-group">
		<label class="control-label">request-id</label>
		<div class="controls">
			<input type="text" name="bfobject.requestid" value='<#if rhs["bugFix"]?exists>${rhs["bugFix"].requestid?if_exists}</#if>' />
		</div>
	</div>

	<div class="control-group">
		<label class="control-label">工单标题</label>
		<div class="controls">
			<input type="text" name="bfobject.title" value='<#if rhs["bugFix"]?exists>${rhs["bugFix"].title?if_exists}</#if>' />
		</div>
	</div>
 
	<div class="control-group">
		<label class="control-label">工单描述</label>
		<div class="controls">
			<textarea name="bfobject.requestDesc"><#if rhs["bugFix"]?exists>${rhs["bugFix"].requestDesc?if_exists}</#if></textarea>
		</div>
	</div>
	
	<div class="control-group">
		<label class="control-label">开始时间</label>
		<div class="controls">
			<input type="text" name="bfobject.startTime" value='<#if rhs["bugFix"]?exists>${rhs["bugFix"].startTime?if_exists}</#if>' 
				onclick="javascript:WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});" />
		</div>
	</div>
	
	<div class="control-group">
		<label class="control-label">优先级</label>
		<div class="controls">
			<input type="text" name="bfobject.priority" value='<#if rhs["bugFix"]?exists>${rhs["bugFix"].priority?if_exists}</#if>' />
		</div>
	</div>
	
	<div class="controls">
		<input type="submit" class="btn" value="保存"/>
		<a title="返回" class="btn" href="manager_bugfix_list.do">返回</a> 		
	</div>
</fieldset>	
</form>
       