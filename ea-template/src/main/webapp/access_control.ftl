
<table>
<#list Session["menuList"]?sort_by('sortNob')  as node>
    <tr><td>${node.name?if_exists}</td>
   
    <td><a href=${node.actionUrl?if_exists} target=_blank >${node.actionUrl?if_exists} </a></td>
    
    </tr>
</#list>

</table>