<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>
 
<body>
<h1>Julie E Bruno</h1>

<h2>Login</h2>
<s:form action="loginAction" >
  <s:textfield name="mail" label="E-mail" value="" />
  <s:password name="password" label="Password" value="" />
  <s:submit />
</s:form>


</body>
</html>