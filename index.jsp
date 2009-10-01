<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<html:html locale="true">
<head>
<title><bean:message key="index.title"/></title>
<html:base/>
</head>
<body bgcolor="white">

<logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
  <font color="red">
    ERROR:  Application resources not loaded -- check servlet container
    logs for error messages.
  </font>
</logic:notPresent>

<h3><bean:message key="index.heading"/></h3>
<ul>
        <li>
                <html:link forward="goToMod1">
                        <bean:message key="toMod1.using.forward"/>
                </html:link>
        </li>
        <li>
                <html:link forward="goToMod1_forward_calling_action">
                        <bean:message key="toMod1.using.forward.and.action" arg0="default" arg1="mod1"/>
                </html:link>
        </li>
        <li>
                <html:link action="switchToMod1?prefix=/mod1&page=/index.jsp">
                        <bean:message key="toMod1.using.switchaction"/>
                </html:link>
        </li>
</ul>

<br><br>


<bean:message key="index.which.module"/>


<br><br>
<html:img page="/images/struts-power.gif" alt="Powered by Struts" align="center"/>

</body>
</html:html>

