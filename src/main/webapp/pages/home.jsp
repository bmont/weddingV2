<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	 <title>JB</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/carousel.css">
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
 
<body>
<input type="hidden" name="userId" value="${userId}" />
<div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
<!--               <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> -->
<%--                 <span class="sr-only">Toggle navigation</span> --%>
<%--                 <span class="icon-bar"></span> --%>
<%--                 <span class="icon-bar"></span> --%>
<%--                 <span class="icon-bar"></span> --%>
<!--               </button> -->
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="#">Home</a></li>
                <li><a href="#about">Maio, 29</a></li>
                <li><a href="#contact">Fotos</a></li>
                <li><a href="#contact">Logout</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Conta<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Mensagem para os Noivos</a></li>
                    <li><a href="#">Sugestões</a></li>
                    <li><a href="#">Excluir Minha Conta</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="" >
          <div class="container">
            <div class="carousel-caption">
              <h1>LISTA DE PRESENTES</h1>
              <p>Nosso maior presente é a sua presença! Mas de todo caso preparamos uma listinha das coisas que mais precisamos. Se você ainda não escolheu, dá uma olhada!</p>
              <p><a class="btn btn-lg" href="giftAction.action" role="button">Aqui</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="" >
          <div class="container">
            <div class="carousel-caption">
              <h1>Vai Ter Casamento Sim!!!</h1>
              <p>Esperamos muito por esse dia e se você está lendo isso é porque pensamos em você para estar conosco celebrando e comemorando. Ta cada vez mais perto! Quer saber como tá sendo planejar e executar um casamento, morando desde outro país? </p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">A Gente Conta</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" >
          <div class="container">
            <div class="carousel-caption">
              <h1>Viagem Gratis pra Argentina.</h1>
              <p>Como assim, grátis? </p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Me Conta Esse Babado</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Próximo</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Bem Vindo, <span class="text-muted" id="rosa"><c:out value="${name}"/></span></h2>
          <p class="lead">Criamos essa plataforma para estar mais perto dos convidados nessa contagem regressiva. Estamos muitos ansiosos e sabemos que vai sair tudo lindo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="" >
        </div>
      </div>
	<hr class="featurette-divider">
      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="img/gloria.jpg" width="140" height="140">
          <h2>Conociu los Noivus</h2>
          <p>Quão bem você conhece os noivos? Você quer provar um verdadeiro merecedor de ter recebido um convite pro melhor casamento dos últimos milhares de anos?</p>
          <p><a class="btn btn-default"  href="#" role="button">Então Clica Aqui &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>Dar Pitaco</h2>
          <p>Queremos saber a opinião de vocês sobre alguns temas. É coisa rápida.</p>
          <p><a class="btn btn-default" href="#" role="button">Empezar &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h2>Um Grande Presente</h2>
          <p>Isso que nós somos pra vocês, já sabemos! :) Agora, falaando em presente... se você ainda não viu mais acima a nossa lista de presentes, aqui vai uma segunda chance. </p>
          <p><a class="btn btn-default" href="#" role="button">É aqui, ó &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Ajude a Registrar Esse Momento. <span class="text-muted" id="rosa">#Julie&Bruno2016</span></h2>
          <p class="lead">Antes, durante ou depois da cerimonia quando for postar algo relacionado ao casamento, 
          no facebook ou no twitter, coloca a hashtag do casamento assim fica mais fácil para a gente e todo mundo ver!</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block img-rounded" src="img/insta.jpg" >
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Bezerra Figueiredo, <span class="text-muted" id="rosa">LUNA</span></h2>
          <p class="lead">Nós temos a filha mais linda do mundo. A única coisa que vai faltar pro casamento ser perfeito é que ela não vai poder estar conosco lá.
          Por uma questão de transporte e porque ela é um pouco grande e gordita. hahaha. Ela já ta com a gente há mais de um ano e nesse
          tempo ela contribuiu para que possamos lidar melhor com as dificuldades e viver realmente essa experiencia de família. Aqui, nossa
          homenagem pra nossa filha gordita, a quem tanto amamos.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block img-rounded" src="img/luna.jpg" >
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">voltar ao topo</a></p>
        <p>&copy; 2016 By The Groom and The Bright. &middot; <a href="#">Privacidade</a> &middot; <a href="#">Termos</a></p>
      </footer>

    </div>
</body>
</html>