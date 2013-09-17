<table>
    <tr><td style="border: 0px;"><a onclick="javascript:new_smtp();getPage_smtp(${rhs.maxPage});" type=button  class="button" >新建</a></input></td></tr>
    <tr><td style="border: 0px;">
		  <table   class="table  table-condensed"  style="">
		    <thead>
				<tr><th width=100>邮箱</th><th  width=50>标题</th><th width=50>服务器</th><th  width=50>端口号</th><th  width=80>账号</th><th  width=50>密码</th><th  width=150>操作</th></tr>
			</thead>
			<tbody>
			<#list rhs["dataList"] as x>
				<tr>
					<td><input  type="text"  value='${x.sender?if_exists}' onchange="javascript:ajax_smtp('${x.id}','sender',this.value)" /></td>
					<td><input  type="text"  value='${x.title?if_exists}'  onchange="javascript:ajax_smtp('${x.id}','title',this.value)" /></td>
					<td><input  type="text"  value='${x.host?if_exists}'  onchange="javascript:ajax_smtp('${x.id}','host',this.value)" /></td>
					<td><input  type="text"  value='${x.port?if_exists}' onchange="javascript:ajax_smtp('${x.id}','port',this.value)" /></td>
					<td><input  type="text"  value='${x.account?if_exists}'  onchange="javascript:ajax_smtp('${x.id}','account',this.value)" /></td>
					<td><input  type="text"  value='${x.passwd?if_exists}'  onchange="javascript:ajax_smtp('${x.id}','passwd',this.value)" /></td>
					<td><a onclick="javascript:delete_smtp(${x.id})" type=button  class="button" >删除</a></td>
				</tr>
			</#list> 
			</tbody>
		 </table>
    </td></tr>
    <tr><td style="border: 0px;text-align:right;" >
			<span id="div_result" class=info></span>&nbsp;&nbsp;
			<#--分页操作 -->
			显示条数<input class=text size=1 value=${rhs.maxSize} onchange="javascript:ajax_page_smtp('maxSize',this.value)" />
			<#if (rhs.currentPage > 1) >[<a onclick="javascript:getPage_smtp(${1})">第一页</a>]&nbsp;&nbsp;</#if>
			<#if (rhs.currentPage > 1) >[<a onclick="javascript:getPage_smtp(${rhs.currentPage-1})">上一页</a>]&nbsp;&nbsp;</#if>
			<#if (rhs.currentPage < rhs.maxPage) >[<a onclick="javascript:getPage_smtp(${rhs.currentPage+1})">下一页</a>]&nbsp;&nbsp;</#if>
			<#if (rhs.currentPage < rhs.maxPage) >[<a onclick="javascript:getPage_smtp(${rhs.maxPage})">最后页</a>]&nbsp;&nbsp;</#if>
			第${rhs.currentPage}页&nbsp;&nbsp;
			共${rhs.maxPage}页&nbsp;&nbsp;
			总${rhs.count}条记录
    </td></tr>
</table>     
     

