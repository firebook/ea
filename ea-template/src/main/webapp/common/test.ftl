
<script type="text/javascript" language="javascript">
	
     
</script>
<#-- 取参数
${RequestParameters["id"]}
-->
<#list Request?keys as x>
    ${x?if_exists},
</#list> 
<br>
${stack.findValue('aa')}