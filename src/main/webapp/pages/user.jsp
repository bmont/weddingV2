<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>
 
<body>
<h1>Julie E Bruno</h1>

<h2>Novo Cadastro - Convidados</h2>
<s:form action="addUserAction" >
  <s:textfield name="name" label="Name" value="" />
  <s:password name="password" label="Password" value="" />
  <s:textfield name="mail" label="Mail" value="" />
  <s:textfield name="fone" label="FOne" value="" />
  <s:textfield name="giftId" label="Gift" value="3"/>
  <s:submit />
</s:form>

<h2>All Customers</h2>

<s:if test="userList.size() > 0">
<table border="1px" cellpadding="8px">
	<tr>
		<th>User Id</th>
		<th>Name</th>
		<th>Mail</th>
		<th>Created Date</th>
	</tr>
	<s:iterator value="userList" status="userStatus">
		<tr>
			<td><s:property value="UserId" /></td>
			<td><s:property value="name" /></td>
			<td><s:property value="mail" /></td>
			<td><s:date name="created" format="dd/MM/yyyy" /></td>
		</tr>
	</s:iterator>
</table>
</s:if>
<br/>
<br/>

</body>
</html>