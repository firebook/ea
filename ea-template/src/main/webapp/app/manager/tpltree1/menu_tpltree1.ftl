<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="<@context_module/>tpltree1.js"></script>


<div class="row" style="padding-left:10px">
	<div class="span5">
	<a href=# onclick="javascript:action_tpltree1('create.do','id=root');">添加根节点</a>
	<hr>
	</div>
	<div id=div_tpltree1_tree class="span11">
		<#include "ajax_tpltree1.ftl">
	</div>
</div>
</body>