			<#assign num=0/>
			<#list Session["menuList"]?sort_by('sortNob') as node>
			    <#if node.getParentModel()?exists&&node.getParentModel().alias?exists&&node.getParentModel().alias==RequestParameters["subsystemname"]>
		   		 	<script type="text/javascript" language="javascript">
					      document.location="${node.actionUrl?if_exists}?subsystemname=${RequestParameters["subsystemname"]}";
					</script>
					<#break>
			   		 
			    </#if>
			</#list>