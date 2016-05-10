<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<jsp:directive.include file="import.jsp"/>

</head> 
<body>
<jsp:directive.include file="header.jsp"/>   
    <div class="container marketing">

      <div class="row featurette">
        <div class="col-md-8">
          <h2 class="featurette-heading"><span class="text-muted" id="rosa">Excluir Conta</span></h2>
          <p class="lead">Tem certeza que deseja excluir sua conta? (Ao clicar em sim sua conta será excluida e você redirecionado à página inicial)</p>
          <br><br>
	        <p class="lead">
              <a href="excluir.action" id="but" class="btn btn-lg btn-default">Sim</a>
              <a href="home.action" id="but" class="btn btn-lg btn-default">Não</a>
            </p>
        </div><br><br><br><br><br><br>
	        <div class="col-md-4">
	          <img class="featurette-image img-responsive center-block img-rounded" src="img/logo2.jpg" >
	        </div>
<!--         <p><a class="btn btn-default"  href="home.action" role="button">Voltar;</a></p> -->
      </div>
		<jsp:directive.include file="footer.jsp"/>

      <!-- FOOTER -->
    </div>
</body>
</html>
          <p class="lead">.</p>