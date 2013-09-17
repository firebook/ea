<#if rhs["info"]?exists && rhs["info"]!= "">
	<div class='alert alert-${rhs["info_type"]}' id="include_alert_info">${rhs["info"]}</div>
	<script type="text/javascript"> 
		setTimeout("$('#include_alert_info').remove()", 2000);
	</script>
</#if>