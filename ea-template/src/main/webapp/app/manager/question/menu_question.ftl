<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="<@context_module/>question.js"></script>

<div class="row" style="padding-left:5px">
	<div class="span5">
	  <a href=# onclick="javascript:action_question('create.do','');">插入新人员记录</a>
	<hr>
	</div>
	<#include "ajax_question.ftl">
	
</div>
</body>
<#--
<hr>
<footer>
	<p>&copy; Company 2013</p>
</footer>
-->
