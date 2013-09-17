ID,账户,姓名,公司,性别,team,入职年限,工作年限,技术领域,内部评估级别
<#list rhs["userList"] as u>	
 ${u.id?if_exists}, ${u.account?if_exists},${u.name?if_exists}, ${u.company?if_exists},${u.sex?if_exists},${u.ext1?if_exists},<#if u.rollDate?has_content><#assign x=2012>${x-u.rollDate[0..3]?number}</#if>,<#if u.birthDate?has_content>${2012-u.birthDate[0..3]?number-22},${u.ext2?if_exists},${u.assessLev?if_exists}</#if>
</#list>
