<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="<@context_module/>role.js"></script>

<div style="padding:20px">

<a  onclick="javascript:action_role('create.do','id=root');">添加根节点</a>
<hr>
<div id=div_role_tree>
	<#include "ajax_role.ftl">
</div>
</div>