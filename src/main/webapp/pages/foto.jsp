<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="pages/engine1/style.css" />
	<script type="text/javascript" src="pages/engine1/jquery.js"></script>
</head>
<body>
<input type="hidden" name="userId" value="${userId}" />
<jsp:directive.include file="header.jsp"/>    
    <div class="container">
		<h2>* Depois postaremos todas as fotos aqui!! *</h2>
	
	<br><br><br><br>
<div id="wowslider-container1" >
	<div class="ws_images"><ul>
		<li><img src="pages/data1/images/fotos.jpg" alt="Colonia de Sacramento - Dez 2015" title="Colonia de Sacramento - Dez 2015" id="wows1_0"/></li>
		<li><img src="pages/data1/images/img_0628.jpg" alt="IMG_0628" title="IMG_0628" id="wows1_1"/></li>
		<li><img src="pages/data1/images/img_0722.jpg" alt="IMG_0722" title="IMG_0722" id="wows1_2"/></li>
		<li><img src="pages/data1/images/img_1159.jpg" alt="IMG_1159" title="IMG_1159" id="wows1_3"/></li>
		<li><img src="pages/data1/images/img_1162.jpg" alt="bootstrap carousel" title="IMG_1162" id="wows1_4"/></li>
		<li><img src="pages/data1/images/img_1169.jpg" alt="IMG_1169" title="IMG_1169" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Colonia de Sacramento - Dez 2015"><span><img src="pages/data1/tooltips/fotos.jpg" alt="Colonia de Sacramento - Dez 2015"/>1</span></a>
		<a href="#" title="IMG_0628"><span><img src="pages/data1/tooltips/img_0628.jpg" alt="IMG_0628"/>2</span></a>
		<a href="#" title="IMG_0722"><span><img src="pages/data1/tooltips/img_0722.jpg" alt="IMG_0722"/>3</span></a>
		<a href="#" title="IMG_1159"><span><img src="pages/data1/tooltips/img_1159.jpg" alt="IMG_1159"/>4</span></a>
		<a href="#" title="IMG_1162"><span><img src="pages/data1/tooltips/img_1162.jpg" alt="IMG_1162"/>5</span></a>
		<a href="#" title="IMG_1169"><span><img src="pages/data1/tooltips/img_1169.jpg" alt="IMG_1169"/>6</span></a>
	</div></div>
	<div class="ws_shadow"></div>
	</div>	
	</div>
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>

</body>
</html>