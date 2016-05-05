<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>JB</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-table.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-table.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
</head>
<body>
	<input type="hidden" name="userId" value="${userId}"/>
    <div class="container">
        <h1>Lista de Presentes</h1>
        <p></p>
        
         <form id="defaultForm" class="form-horizontal" action="pickGiftAction">
				        <table id="table" class="table table-striped table-bordered table-hover" >
				            <thead>
				            <tr>
				            	<th></th>
				                <th>ID</th>
				                <th>Nome</th>
				                <th>Preco</th>
				            </tr>
				            </thead>
				            <tbody>
				            	<c:forEach items="${giftList}" var="gift">
			            			<c:if test="${gift.disp == false}"> 
					            		<tr class="warning">
					            			<td><input type="radio" value="${gift.id}" disabled="disabled" name="id"></td>
					            			<td><c:out value="${gift.id}" /></td>
					            			<td><c:out value="${gift.name}" /></td>
					            			<td><c:out value="${gift.price}" /></td>
				            			</tr>
					            			
			            			</c:if>
		            				<tr>
				            			<c:if test="${gift.disp == true}"> 
					            			<td><input type="radio" value="${gift.id}" name="id"></td>
					            			<td><c:out value="${gift.id}" /></td>
					            			<td><c:out value="${gift.name}" /></td>
					            			<td><c:out value="${gift.price}" /></td>
				            			</c:if>
				            		</tr>
				            	</c:forEach>
				            </tbody>
				        </table>
         
        <button type="submit" id="button" class="btn btn-success">Confirmar</button>
        </form>
    </div>
<script>

$(document).ready(function() {
    $('#table').DataTable({
        order: [[ 1, 'asc' ]],
        pagingType: "simple_numbers"
    } );
} );

</script>
</body>
</html>
