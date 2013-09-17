<script type='text/javascript' >
var names = [
<#list rhs["userlist"] as u>
{ name: "${u.name?if_exists}", account: "${u.account?if_exists}" }<#if u_has_next>,<#else> </#if>
</#list>
];
</script>
