<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript">

	Ext.onReady(function(){
        d = new Date(); 
	    timeTile=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
        var dataAll = []; 
<#list rhs["organizelist"]  as organize>
	<#list organize.getRoles() as role>	
		dataAll.push(['${role.name?if_exists}(${role.getUsers()?size})', '${role.getUsers()?size}']);    
	</#list> 	        		    
</#list>	    
	    new Ext.Panel({
	        width: 500,
	        height: 250,
	        renderTo: 'containerLevelAll',
	        title: ' GSC Application Design- Competence Mapping:',
	        items: {
	            xtype: 'columnchart',
	            store: new Ext.data.ArrayStore({
						        fields: ['level', 'PersonNumbers'],
						        data: dataAll
						    }),
	            yField: 'PersonNumbers',
		       
	            xField: 'level',
	            xAxis: new Ext.chart.CategoryAxis({
	                title: 'technology  '
	            }),
	            yAxis: new Ext.chart.NumericAxis({
	                title: 'number'
	            }),
	            extraStyle: {
	               xAxis: {
	                    labelRotation: 0
	                }
	            }
	        }
	    });	
	 
    });	 
</script>
<body style="padding:30px">     
<div id="containerLevelAll"></div>	   
<#list rhs["organizelist"]  as organize>
	<#list organize.getRoles() as role>
		<b>${role.name?if_exists}(${role.getUsers()?size}人)</b><br>
	    <table>
		    <thead>
				<tr>
					<td >姓名</td>
				    <td >公司-team</td>
				    <td >工作经验</td>
				    <td >入职年限</td>
				</tr>
			</thead>				       
	       <#list role.getUsers()?sort_by("ext2") as u>
    		<tr>				       
			    <td>${u.name?if_exists}-${u.ext2?if_exists}岁</td>
			    <td>${u.company?if_exists} -${u.ext1?if_exists}</td>
			    <td>${u.ext3?if_exists}</td>
			    <td>${u.ext4?if_exists}</td>
			</tr>
		   </#list>
	    </table> 
	</#list>
</#list> 
</body>
<#---
<table>
	<tr>
	<#list rhs["organizelist"]  as organize>
	 <td valign=top>   
				<#list organize.getRoles() as role>
					<b>${role.name?if_exists}(${role.getUsers()?size}人)</b><br>
				    <table>
					    <thead>
							<tr>
								<td >姓名</td>
							    <td >公司-team</td>
							    <td >工作经验</td>
							    <td >入职年限</td>
							
							</tr>
						</thead>				       
				       <#list role.getUsers()?sort_by("ext2") as u>
			    		<tr>				       
						      <td>${u.name?if_exists}-${u.ext2?if_exists}岁</td>
						      <td>${u.company?if_exists} -${u.ext1?if_exists}</td>
						     <td>${u.ext3?if_exists}</td>
						      <td>${u.ext4?if_exists}</td>
						</tr>
					   </#list>
				    </table> 
				</#list>
				
	</td>	
	</#list> 
	
	</tr>
</table>
-->       