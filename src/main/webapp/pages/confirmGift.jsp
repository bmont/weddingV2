<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<jsp:directive.include file="import.jsp"/>

</head> 
<body>
		<input type="hidden" name="userId" value="${userId}" />
		<input type="hidden" name="userName" value="${userName}" />
<jsp:directive.include file="header.jsp"/>   
    <div class="container marketing">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Muchísimas Gracias, <span class="text-muted" id="rosa"><c:out value="${name}"/></span></h2>
          <p class="lead">Seu presente vai nos ajudar muito nessa nova fase. Mesmo já morando em BsAs estamos iniciando 
          uma nova fase para ter um cantinho só nosso e vamos necessitar da ajuda de todos os amigos.</p>
          <br><br>
          <p id="rosa">Você pode depositar o valor na seguinte conta:</p>
          <p>Banco do Brasil<br>Bruno Monteiro Figueiredo<br>Conta: 0325-5<br>Agencia: 45376-5 <br> CPF: 011.519.264-69</p>
        </div><br><br><br><br><br><br>
	        <div class="col-md-5">
	          <img class="featurette-image img-responsive center-block img-rounded" src="img/logo2.jpg" >
	        </div>
<!--         <p><a class="btn btn-default"  href="home.action" role="button">Voltar;</a></p> -->
      </div>

      <!-- FOOTER -->
    </div>
		<jsp:directive.include file="footer.jsp"/>
</body>
</html>