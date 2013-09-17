<#macro pagination searchFromId>
<script>
function page_list_commit(pageNo){
	document.getElementById('pageId').value = pageNo;
	document.getElementById('pageMaxSize').value = $("#changeMaxSize").val();
	$('#${searchFromId}').submit();	
}
</script>
<div class="pagination pagination-right">
	<#-- ${rhs.count} -->
	<ul>
	    <#if (rhs.currentPage > 1)><li><a onclick="javascript:page_list_commit(${rhs.currentPage-1})" href="#">«</a></li></#if><#-- 上一页 -->
	    <#if (rhs.currentPage > 1)><li><a onclick="javascript:page_list_commit(1)" href="#">1</a></li></#if><#-- 第一页 -->
	    <li class="active"><a href="#">${rhs.currentPage}</a></li><#-- 本页 -->
	    <#if (rhs.currentPage < rhs.maxPage)><li><a onclick="javascript:page_list_commit(${rhs.maxPage})" href="#">${rhs.maxPage}</a></li></#if><#-- 最后一页 -->
	    <#if (rhs.currentPage < rhs.maxPage)><li><a onclick="javascript:page_list_commit(${rhs.currentPage+1})" href="#">»</a></li></#if><#-- 下一页  -->
	</ul>
	<select style="width:60px; margin-top:-12px;" id="changeMaxSize" onchange="javascript:page_list_commit(1)" >
	    <option value="${rhs.maxSize}">${rhs.maxSize}</option>
		<option value="5">5</option>
		<option value="10">10</option>
		<option value="20">20</option>
		<option value="50">50</option>
		<option value="200">200</option>
	<select>
</div>
</#macro>