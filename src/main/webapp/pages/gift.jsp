<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <jsp:directive.include file="import.jsp"/>
</head>
<body>
	<input type="hidden" name="userId" value="${userId}" />
	<input type="hidden" name="userName" value="${userName}" />
	<jsp:directive.include file="header.jsp"/>   
    <div class="container">

      <div class="row featurette">
        <div class="col-md-12 ">
          <h2 class="featurette-heading">Nossa Lista de <span class="text-muted" id="rosa">Presentes.</span></h2>
          <p class="lead">Aqui abaixo a nossa lista de presentes. Ao Olhar a lista, alguns itens podem estar indisponíveis.
          Isso significa que outra pessoa já o escolheu. O esquema é o mesmo que está no convite. Cada item tem uma média de preços
          retirada das lojas Ferreira Costa, Maganize Luiza e Americanas.com</p>
          <p>Isso é apenas um meio para nós podermos nos planejar melhor.
          Apenas uma coisa tem que ficar claro: <span id="rosa">Nosso maior presente sempre será você, celebrando esse momento conosco.</span></p>
        </div>
<!--         <div class="col-md-5 col-md-pull-7"> -->
<!--           <img class="featurette-image img-responsive center-block img-rounded" src="img/insta.jpg" > -->
<!--         </div> -->
      </div>
        
        <hr class="featurette-divider">
         <form id="defaultForm" class="form-horizontal" action="pickGift">
				        <table id="table" class="table table-striped table-bordered table-hover" >
				            <thead>
				            <tr>
				            	<th></th>
				                <th>ID</th>
				                <th>Nome</th>
				                <th>Preco Mínimo</th>
				                <th>Preco Maximo</th>
				            </tr>
				            </thead>
				            <tbody>
				            	<c:forEach items="${giftList}" var="gift">
					            		<tr class="warning">
					            		<c:if test="${gift.disp == true}">
					            			<td><input type="radio" value="${gift.id}" name="gift.id"></td>
					            		</c:if>
					            		<c:if test="${gift.disp == false}">
					            			<td><input type="radio" value="${gift.id}" disabled="disabled" name="gift.id"></td>
					            		</c:if>
					            			<td><c:out value="${gift.id}" /></td>
					            			<td><c:out value="${gift.name}" /></td>
					            			<td><c:out value="${gift.price}" /></td>
					            			<td><c:out value="${gift.priceMax}" /></td>
				            			</tr>
				            	</c:forEach>
				            </tbody>
				        </table>
         
        <button type="submit" id="button" class="btn btn-block">Confirmar</button>
        </form>
        <br>
    </div>
	<jsp:directive.include file="footer.jsp"/>
<script>

// function verificar (list) {
// 	alert(list.length);
// 	for (i=0; i<list.length; i++){
// 		var id = "disp"+list[i].id;
// 		var input = document.getElementById(id);
// 		if(list[i].disp == true) {
// 			input.setAttribute("disabled", "");
// 		}else{
// 			input.setAttribute("disabled", "disabled");
// 		}
// 	}
// }

$(document).ready(function() {
    $('#table').DataTable({
        order: [[ 1, 'asc' ]],
        language : {
            "sEmptyTable": "Nenhum registro encontrado",
            "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
            "sInfoFiltered": "(Filtrados de _MAX_ registros)",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "_MENU_ resultados por página",
            "sLoadingRecords": "Carregando...",
            "sProcessing": "Processando...",
            "sZeroRecords": "Nenhum registro encontrado",
            "sSearch": "Pesquisar",
            "oPaginate": {
                "sNext": "Próximo",
                "sPrevious": "Anterior ",
                "sFirst": "Primeiro",
                "sLast": "Último"
            },
            "oAria": {
                "sSortAscending": ": Ordenar colunas de forma ascendente",
                "sSortDescending": ": Ordenar colunas de forma descendente"
            }
        }
    } );
} );

</script>
</body>
</html>
