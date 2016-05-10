<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/carousel.css">
    <title>Julie e Bruno - QUIZ</title>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
    
     <!-- Bootstrap core CSS -->
    <link href="pages/quiz/css/bootstrap.min.css" rel="stylesheet">

    <link href="pages/quiz/css/styles.css" rel="stylesheet">
</head>

<body>
	<div class="navbar-wrapper menu">
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
<!-- 	                <li class="dropdown"> -->
<%-- 	                  <a href="#" id="dropActive"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Conta<span class="caret"></span></a> --%>
<!-- 	                  <ul class="dropdown-menu"> -->
<!-- 	                    <li><a id="dropActive"  href="initMensagem.action">Mensagem para os Noivos</a></li> -->
<!-- 	                    <li><a id="dropActive" href="building.action">Sugestões</a></li> -->
<!-- 	                    <li><a id="dropActive"  href="preExcluir.action">Excluir Minha Conta</a></li> -->
<!-- 	                  </ul> -->
<!-- 	                </li> -->
	              </ul>
	            </div>
	          </div>
	        </nav>
	      </div>
	    </div>
    <div id="container" style="position:absolute;width:100%;height:100%;"></div>
    
    <script src="pages/quiz/js/jquery.js"></script>
    <script src="pages/quiz/js/jquery.easing.1.3.js"></script>
    <script src="pages/quiz/js/jquery.transit.min.js"></script>
    <script src="pages/quiz/js/essemble_core.min.js"></script>
    <script src="pages/quiz/js/mcq.js"></script>
    <script src="pages/quiz/js/quiz.js"></script>
    
    
    
    <script>
    var quiz;

    function init(){
        
        //create the screen object which loads the xml and creates all screen elements
        quiz = new Screen({id:"myQuiz", xmlPath:"pages/quiz/xml/quiz2_responsive.xml"});
        
        //choose a target div
        var targetDiv = get("container");
        
        //load it
        quiz.load(targetDiv,false);
    }
    
    //kick off
    $(document).ready(function() {
        init();
    });
    
    </script>
</body>
</html>

