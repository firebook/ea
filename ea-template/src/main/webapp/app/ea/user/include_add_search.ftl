<form action="ea_user_list.do" id="searchFromId" method="post" class="form-search breadcrumb"> <#-- 该ID需当参数传入分页的宏	-->
	<a class="btn btn-primary" href="ea_user_load.do">添加</a>
	<span>|</span>
	<input type="hidden" name="search" value="search">  					<#-- 这里必须加上，不然不会进行条件查询，且name和value不能修改其他值		-->
	<input type="hidden" name="pageId" id="pageId">      					<#-- 这里必须加上，不然分页模块会不正常，且id和name不能修改为其他值	-->
	<input type="hidden" name="maxSize" id="pageMaxSize">      		        <#-- 这里必须加上，不然修改显示条数会不正常，且id和name不能修改为其他值	-->
	account：(=)<input type="text" class="input-small" name="account:=" value='${rhs["account"]?if_exists}'/>
	name：(like)<input type="text" class="input-small" name="name:like" value='${rhs["name"]?if_exists}'/>
	id：(>)<input type="text" class="input-small" name="id:>" value='${rhs["id"]?if_exists}'/>
	<input type="submit" class="btn" value="搜索"/>
</form>
       