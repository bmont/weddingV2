<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<jsp:directive.include file="import.jsp"/>
</head>
<body>
    <div class="container container-msg">

     <div class="row featurette">
        <div class="col-md-12 ">
          <h2 class="featurette-heading">Mensagem para os <span class="text-muted" id="rosa">Noivos.</span></h2>
          <p class="lead">Aqui um espaço para escrever algo para os noivos. Depoimentos, elogios, reclamações, pedir informações, enfim,
          qualquer coisa mesmo. 
          <p>No <span id="rosa">grande dia</span> quem sabe pode passar seu depoimento em forma de homenagem.</p>
        </div>
      </div>
        
         <form id="defaultForm" class="form-horizontal" action="start.action">
         <textarea id="textarea" name="msg"></textarea>
         <br><br>
        <button type="submit" id="but" class="btn btn-block">Enviar</button>
        </form>
        <br>
    </div>
	<jsp:directive.include file="footer.jsp"/>
	
</body>
</html>
