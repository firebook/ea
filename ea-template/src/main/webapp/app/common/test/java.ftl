aaa

${javacall["com.app.common.freemarker.JavaCall"].hello()}
<br>多少年：
${javacall["com.common.time.Time"].getHowManyYearToNow("2002-13-10")}

<#--
${stack.findValue("@com.app.common.freemarker.JavaCall@hell()")}

${_javacall.hello()}
--> 