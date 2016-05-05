<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <link rel="icon" href="../../favicon.ico">
	    <title>Julie & Bruno - Login</title>
	    
	        <!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="css/signin.css" rel="stylesheet">
	</head>
 
	<body>
		<div class="container">

	      	<s:form cssClass="form-signin" action="loginAction.action">
		        <h2 class="form-signin-heading">Entrar</h2>
		        <label for="inputEmail" class="sr-only">E-mail</label>
		        <input type="email" name="mail" id="inputEmail" class="form-control" placeholder="E-mail" required autofocus>
		        <label for="inputPassword" class="sr-only">Senha</label>
		        <input type="password"  name="password" id="inputPassword" class="form-control" placeholder="Password" required>
		        <a class="text-left" href="preAddUserAction.action">Primeira vez?</a>
<!-- 		        <div class="checkbox"> -->
<!-- 		          <label> -->
<!-- 		            <input type="checkbox" value="remember-me"> Me mantenha logado -->
<!-- 		          </label> -->
<!-- 		        </div> -->
		        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
	      </s:form>

    </div> <!-- /container -->
	
	</body>
</html>