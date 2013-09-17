<#include "macro_role_input.ftl">

<table    class="table  table-condensed" style="width:1000px">
     <thead>
		<tr>
			<th>分组</th><th>操作</th>
		</tr>
	</thead>   
    
<@digui_role rhs["roleRootList"]?sort_by('sortNob'),"" />	

</table>
<span id="div_action_result" class="small text-${rhs["info_type"]?if_exists} ">
	${rhs["info"]?if_exists}
</span>