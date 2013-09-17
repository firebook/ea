<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="organize/organize.js"></script>
<script type="text/javascript" src="rolegroup/rolegroup.js"></script>
<script type="text/javascript" src="user/user.js"></script>
<script type="text/javascript" >getPage_user(1);</script>
<table width=1100px>
    <tr>
    	<td colspan=2 style="border: 0px;"><div id=user></div></td>
    </tr>
    <tr height="10px"><td colspan=2 style="border: 0px;"></td></tr>
	<tr>
		<td valign=top width=600px style="border: 0px;">
			<#include "../organize/include_init.ftl">
		</td>
		<td valign=top width=500px style="border: 0px;">
			<#include "../rolegroup/include_init.ftl">
		</td>
	</tr>
</table>	
