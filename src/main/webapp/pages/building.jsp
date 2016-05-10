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
          <h2 class="featurette-heading">Desculpa, <span class="text-muted" id="rosa">Página em Construção</span></h2>
          <p class="lead">Como tivemos essa idéia há pouquinho tempo, estamos trabalhando para colocar no ar tudo aquilo que pensamos.
          Mas como já ta em cima da data, achamos melhor subir o que já tinha e de a pouco ir colocando o resto.</p>
          <br><br>
          <p id="rosa">Esta página estará disponivel muito em breve.</p>
        </div><br><br><br><br><br><br>
	        <div class="col-md-4">
	          <img class="featurette-image img-responsive center-block img-rounded" src="img/logo2.jpg" >
	        </div>
<!--         <p><a class="btn btn-default"  href="home.action" role="button">Voltar;</a></p> -->
      </div>
      <div id="copyright" class="col-md-12">
		<jsp:directive.include file="footer.jsp"/>
      </div>

      <!-- FOOTER -->
    </div>
</body>
</html>