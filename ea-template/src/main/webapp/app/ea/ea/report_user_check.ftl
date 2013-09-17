<#include "../../../common/freemarker/include_header.ftl">
<p class=title>没有分配公司的人</p>
<#list rhs["userList"] as u>
	<#if u.company?matches("未分配公司")>
		${u.name?if_exists},
	</#if>
</#list>

<p class=title>没有分配team的人</p>
<#list rhs["userList"] as u>
	<#if u.ext1?matches("未分配team")>
		${u.name?if_exists},
	</#if>
</#list>

<p class=title>没有分配技术领域的人</p>
<#list rhs["userList"] as u>
	<#if u.ext2?matches("未分配技术领域")>
		${u.name?if_exists},
	</#if>
</#list>

<p class=title>没有评级的人</p>
<#list rhs["userList"] as u>
	<#if (!u.assessLev?exists)||u.assessLev==" "||u.assessLev=="">
		${u.name?if_exists},
	</#if>
</#list>
<br>
