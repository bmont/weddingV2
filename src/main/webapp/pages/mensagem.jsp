<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<jsp:directive.include file="import.jsp"/>
</head>
<body>
    <script src="js/bootbox.min.js"></script>
		<jsp:directive.include file="header.jsp"/>   
    <div class="container container-msg">

     <div class="row featurette">
        <div class="col-md-12 ">
          <h2 class="featurette-heading">Mensagem para os <span class="text-muted" id="rosa">Noivos.</span></h2>
          <p class="lead">Aqui um espaço para escrever algo para os noivos. Depoimentos, elogios, reclamações, pedir informações, enfim,
          qualquer coisa mesmo. 
          <p>No <span id="rosa">grande dia</span> quem sabe pode passar seu depoimento em forma de homenagem.</p>
        </div>
      </div>
        
         <form id="defaultForm" class="form-horizontal" action="mensagem.action">
         <textarea id="textarea" name="question.msg"></textarea>
         
         <c:if test="${session.userId == null || session.userId == 0 }">
         <div class="form-group"><br>
	                        <label class="col-lg-2 control-label">Email:<i> (Opcional)</i> </label>
	                        <div class="col-lg-9">
	                            <input class="form-control" name="question.email"  />
	                        </div>
	                    </div>
         </c:if>
         <input type="hidden" name="question.userId" value="${session.userId}"/>
         <br><br>
        <button type="submit" id="but" class="btn btn-block">Enviar</button>
			<br><br><br><%@ include file="footer.jsp" %>
        </form>
        <br>
    </div>
	
</body>
<script type="text/javascript">

// 	  bootbox.alert("Obrigado pela mensagem!");
</script>
</html>
