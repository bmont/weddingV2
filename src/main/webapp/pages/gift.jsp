<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>
 
<body>
<h1>Julie E Bruno</h1>

<h2>Presentes</h2>

<s:if test="giftList.size() > 0">
<table border="1px" cellpadding="8px">
	<tr>
		<th>Gift Id</th>
		<th>Name</th>
		<th>Price</th>
		<th>Disponivel</th>
	</tr>
	<s:iterator value="giftList" status="giftStatus">
		<tr>
			<td><s:property value="id" /></td>
			<td><s:property value="name" /></td>
			<td><s:property value="price" /></td>
			<td><s:property value="disp" /></td>
		</tr>
	</s:iterator>
</table>
</s:if>
<br/>
<br/>

</body>
</html>