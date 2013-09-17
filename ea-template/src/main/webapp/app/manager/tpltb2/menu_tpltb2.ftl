<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="<@context_module/>tpltb2.js"></script>
<div style="padding:10px">
	<p>
		
		<a onclick="javascript:action_tpltb2_dialog('manager_tpltb2_load.do','id=');$('#dialog').dialog('open');">添加成员</a>
	
	</p>
	<div id="dialog" >
	    <div id=div_tpltb2_dialog></div>
	</div>
	<#include "ajax_tpltb2.ftl">
</div>