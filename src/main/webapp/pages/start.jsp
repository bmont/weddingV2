<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <link rel="icon" href="../../favicon.ico">
	    
	    <link href="http://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet" type="text/css">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/countdown.css" rel="stylesheet">
		<title>Julie&Bruno</title>
	</head>
 
	<body>
	<div class="countdown countdown-container container">
	    <div class="clock row">
	        <div class="clock-item clock-days countdown-time-value col-sm-6 col-md-3">
	            <div class="wrap">
	                <div class="inner">
	                    <div id="canvas-days" class="clock-canvas"></div>
	
	                    <div class="text">
	                        <p class="val">0</p>
	                        <p class="type-days type-time">DIAS</p>
	                    </div>
	                </div>
	            </div>
	        </div>
	
	        <div class="clock-item clock-hours countdown-time-value col-sm-6 col-md-3">
	            <div class="wrap">
	                <div class="inner">
	                    <div id="canvas-hours" class="clock-canvas"></div>
	
	                    <div class="text">
	                        <p class="val">0</p>
	                        <p class="type-hours type-time">HORAS</p>
	                    </div>
	                </div>
	            </div>
	        </div>
	
	        <div class="clock-item clock-minutes countdown-time-value col-sm-6 col-md-3">
	            <div class="wrap">
	                <div class="inner">
	                    <div id="canvas-minutes" class="clock-canvas"></div>
	
	                    <div class="text">
	                        <p class="val">0</p>
	                        <p class="type-minutes type-time">MINUTOS</p>
	                    </div>
	                </div>
	            </div>
	        </div>
	
	        <div class="clock-item clock-seconds countdown-time-value col-sm-6 col-md-3">
	            <div class="wrap">
	                <div class="inner">
	                    <div id="canvas-seconds" class="clock-canvas"></div>
	
	                    <div class="text">
	                        <p class="val">0</p>
	                        <p class="type-seconds type-time">SEGUNDOS</p>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </div>
	    <div class="countdown countdown-container container">
	   		<div class="clock row">
		      <p class="text2">Recebeu nosso convite?</p>
		      <p class="text2">
		        <a href="preLoginAction.action" class="btn btn-lg btn-primary">Sim, já contando os dias.</a>
		        <a href="preLoginFailedAction" class="btn btn-lg btn-danger">Não chegou ainda.</a>
		      </p>
	      </div>
	    </div>
	
	
		<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
		<script type="text/javascript" src="js/kinetic.js"></script>
		<script type="text/javascript" src="js/jquery.final-countdown.js"></script>
		<script type="text/javascript">
	    $('document').ready(function() {
	        'use strict';
			var start = Date.parse('Sun May 1 19:20:44 +0000 2016')/1000;
			var end = Date.parse('Sun May 29 15:30:00 +0000 2016')/1000;
			var now = new Date().getTime() / 1000;
	        
	    	$('.countdown').final_countdown({
	            'start': start,
	            'end': end,
	            'now': now        
	        });
	    });
		</script>
	</body>
</html>