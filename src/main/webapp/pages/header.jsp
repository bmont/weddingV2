<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${session.userId > 0}">
		<div class="navbar-wrapper">
	      <div class="container">
	        <nav class="navbar navbar-inverse navbar-static-top">
	          <div class="container">
	            <div class="navbar-header">
	            </div>
	            <div id="navbar" class="navbar-collapse collapse">
	              <ul class="nav navbar-nav">
	                <li><a id="dropActive" href="home.action">Home</a></li>
	                <li><a id="dropActive" href="building.action">Maio, 29</a></li>
	                <li><a id="dropActive" href="building.action">Fotos</a></li>
	                <li><a id="dropActive" href="logout.action">Logout</a></li>
	                <li class="dropdown">
	                  <a href="#" id="dropActive"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Conta<span class="caret"></span></a>
	                  <ul class="dropdown-menu">
	                    <li><a id="dropActive"  href="initMensagem.action">Mensagem para os Noivos</a></li>
	                    <li><a id="dropActive" href="building.action">Sugestões</a></li>
	                    <li><a id="dropActive"  href="preExcluir.action">Excluir Minha Conta</a></li>
	                  </ul>
	                </li>
	              </ul>
	            </div>
	          </div>
	        </nav>
	      </div>
	    </div>

</c:if>
	