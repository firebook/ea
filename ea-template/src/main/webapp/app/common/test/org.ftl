	
	<pre>
	个人的项目设置和公司设置原理
	在登录时放入了SESSION中
			List projectList = infEa.getUserAllOrganizeByOrganizegroupAlias(
					user.getId(), "project");
			List departmentList = infEa.getUserAllOrganizeByOrganizegroupAlias(
					user.getId(), "company");
					
		top.ftl中可以取到			
					
	</pre>