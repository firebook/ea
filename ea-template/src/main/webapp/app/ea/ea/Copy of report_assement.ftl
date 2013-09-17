<#include "../../../common/freemarker/include_header.ftl">

<script type="text/javascript">
	Ext.chart.Chart.CHART_URL = '../../common/ext3/resources/charts.swf';  //不能少，否则显示不出饼图
	Ext.onReady(function(){
	
	    <#assign sum_A =0>
	    <#assign sum_B =0>
	    <#assign sum_C =0>
	    <#assign sum_T =0>	
		<#list rhs["userList"] as u>		
			<#if  u.assessLev?exists>
			     <#if  u.assessLev=='A'><#assign sum_A =sum_A+1></#if>
			     <#if  u.assessLev=='B'><#assign sum_B =sum_B+1></#if>
			     <#if  u.assessLev=='C'||u.assessLev=='TE'><#assign sum_C =sum_C+1></#if>
			     <#if  u.assessLev=='T'><#assign sum_T =sum_T+1></#if>
		    </#if>		  
             
 		</#list>	
	    <#assign sum_Total =sum_A+sum_B+sum_C+sum_T>    
        d = new Date(); 
	    timeTile=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
	    
	    var store = new Ext.data.JsonStore({
	        fields: ['season', 'total'],
	        data: [{
	            season: 'A  ${(sum_A/sum_Total)?string.percent}(${sum_A}) ',
	            total: ${sum_A}
	        },{
	            season: 'B  ${(sum_B/sum_Total)?string.percent}(${sum_B}) ',
	            total: ${sum_B}
	        },{
	            season: 'C  ${(sum_C/sum_Total)?string.percent}(${sum_C})',
	            total: ${sum_C}
	        },{
	            season: 'T  ${(sum_T/sum_Total)?string.percent}(${sum_T})',
	            total: ${sum_T}
	        }]
	    });		
	    
		new Ext.Panel({
		        width: 500,
		        height: 400,
		        title: 'EHMS DELIVERY internal competence status <br>( '+timeTile+' member：${sum_Total?if_exists})',
		        renderTo: 'container-pie',
		        items: {
		            store: store,
		            xtype: 'piechart',
		            dataField: 'total',
		            categoryField: 'season',
		            extraStyle:
		            {
		                legend:
		                {
		                    display: 'bottom',
		                    padding: 5,
		                    font:
		                    {
		                        family: 'Tahoma',
		                        size: 13
		                    }
		                }
		            }
		        }
		    });	    
	    
	    
	    
	});    
</script>		  

<#macro showLevelUser level>
	<p><b>${level}</b></p>
		<#assign sum=0>
		<#assign namelist="">
		<#list rhs["userList"] as u>		
		  <#if  (u.assessLev?exists)&&(u.assessLev==level)>
		  	 <#assign sum =sum+1>
		  	 <#assign namelist=namelist+u.name+",">
		  </#if>
		</#list>
	${sum?if_exists}(Pseron)：
	${namelist?if_exists}
</#macro>


<p class=title>Competence Assessment</p>


<div id="container-pie"></div>
<br>
<table width=500>
	<tr><td>
		<b>1.Interal Assessment</b>
		<@showLevelUser level="A"/>	
		<@showLevelUser level="B"/>	
		
		
		<p><b>c</b></p>
			<#assign sum=0>
			<#assign namelist="">
			<#list rhs["userList"] as u>		
			  <#if  (u.assessLev?exists)&&(u.assessLev=="C"||u.assessLev=="TE")>
			  	 <#assign sum =sum+1>
			  	 <#assign namelist=namelist+u.name+",">
			  </#if>
			</#list>
		${sum?if_exists}(Pseron)：
		${namelist?if_exists}
		<hr>		
		<B >Waiting for assement</B>
		<@showLevelUser level="T"/>	
		<br>			
		
	</td></tr>
	<tr><td>	
	
		<b><br>2.ERICSSON office Assessment</b>
		<br><b>Technician Experienced-level</b>
		<@showLevelUser level="TE"/>	
		<hr>
	</td></tr>
</table>


	