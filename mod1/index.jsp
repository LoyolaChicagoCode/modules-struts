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
                <html:link forward="goToDefaultModule">
                        <bean:message key="toDefaultModule.using.forward"/>
                </html:link>
        </li>
        <li>
                <html:link forward="goToDefaultModule_forward_calling_action">
                        <bean:message key="toDefaultModule.using.forward.and.action" arg0="mod1" arg1="default"/>
                </html:link>
        </li>
        <li>
                <html:link action="switchToDefaultModule?prefix=&page=/index.jsp">
                        <bean:message key="toDefaultModule.using.switchaction"/>
                </html:link>
        </li>
</ul>

<br><br>


<bean:message key="index.which.module"/>


<br><br>
The problem with using the struts tags for images (html:image and html:img) is that the
same html:img in the default module really has no clean way to be used in Mod1.
And so you should see the alt text here:<br>

<html:img page="/images/struts-power.gif" alt="Powered by Struts" align="center"/>

</body>
</html:html>

