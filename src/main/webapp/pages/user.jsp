<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    
	    <title>Julie Bruno - Cadastro</title>
	    
	        <!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.css" rel="stylesheet">
	    <link href="css/formValidation.css" rel="stylesheet">
	
	</head>
 
<body>
	<div class="container">
	    <div class="row">
	        <!-- form: -->
	        <section>
	            <div class="col-lg-8 col-lg-offset-2">
	                <div class="page-header">
	                    <h2>É rapidinho!</h2>
	                </div>
	
	                <form id="defaultForm" class="form-horizontal" action="addUser"
	                      data-fv-message="This value is not valid"
	                      data-fv-icon-valid="glyphicon glyphicon-ok"
	                      data-fv-icon-invalid="glyphicon glyphicon-remove"
	                      data-fv-icon-validating="glyphicon glyphicon-refresh">
	                    <div class="form-group">
	                        <label class="col-lg-3 control-label">Nome</label>
	                        <div class="col-lg-4">
	                            <input type="text" class="form-control" name="user.name" placeholder="Nome" required data-fv-notempty-message="Este campo não pode estar vazio" />
	                        </div>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="user.lastName" placeholder="Sobrenome" required data-fv-notempty-message="Este campo não pode estar vazio" />
                        </div>
	                    </div>
	
	<!--                     <div class="form-group"> -->
	<!--                         <label class="col-lg-3 control-label">Username</label> -->
	<!--                         <div class="col-lg-5"> -->
	<!--                             <input type="text" class="form-control" name="username" -->
	<!--                                    data-fv-message="The username is not valid" -->
	<!--                                    required data-fv-notempty-message="The username is required and cannot be empty" -->
	<!--                                    pattern="^[a-zA-Z0-9]+$" data-fv-regexp-message="The username can only consist of alphabetical and digits" -->
	<!--                                    data-fv-stringlength="true" data-fv-stringlength-min="6" data-fv-stringlength-max="30" data-fv-stringlength-message="The username must be more than 6 and less than 30 characters long" -->
	<!--                                    data-fv-remote="true" data-fv-remote-url="remote.php" data-fv-remote-message="The username is not available" /> -->
	<!--                         </div> -->
	<!--                     </div> -->
	
	                    <div class="form-group">
	                        <label class="col-lg-3 control-label">Email</label>
	                        <div class="col-lg-5">
	                            <input class="form-control" name="user.mail" type="email" data-fv-emailaddress-message="Email não é válido" />
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label class="col-lg-3 control-label">Telefone</label>
	                        <div class="col-lg-5">
	                            <input class="form-control" name="user.fone" type="text" data-fv-emailaddress-message="Telefone não é válido" />
	                        </div>
	                    </div>
	
	                    <div class="form-group">
	                        <label class="col-lg-3 control-label">Senha</label>
	                        <div class="col-lg-5">
	                            <input type="password" class="form-control" name="user.password"
	                                   required data-fv-notempty-message="Este campo não pode estar vazio"
	                                   data-fv-different="true" data-fv-different-field="username" data-fv-different-message="The password cannot be the same as username" />
	                        </div>
	                    </div>
	
	                    <div class="form-group">
	                        <label class="col-lg-3 control-label">Confirme a senha</label>
	                        <div class="col-lg-5">
	                            <input type="password" class="form-control" name="confirmPassword"
	                                   required data-fv-notempty-message="Este campo não pode estar vazio"
	                                   data-fv-identical="true" data-fv-identical-field="password" data-fv-identical-message="A senha digitada não é a mesma" />
	                        </div>
	                    </div>
	
	                    <div class="form-group">
	                        <label class="col-lg-3 control-label">Sexo</label>
	                        <div class="col-lg-5">
	                            <div class="radio">
	                                <label>
	                                    <input type="radio" name="user.gender" value="H" required data-fv-notempty-message="Escolha um sexo" /> Homem
	                                </label>
	                            </div>
	                            <div class="radio">
	                                <label>
	                                    <input type="radio" name="user.gender" value="M" /> Mulher
	                                </label>
	                            </div>
	                            <div class="radio">
	                                <label>
	                                    <input type="radio" name="user.gender" value="I" /> Ainda tô decidindo...
	                                </label>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="form-group">
	                        <div class="col-lg-9 col-lg-offset-3">
	                            <button type="submit" class="btn btn-primary">Enviar</button>
	                        </div>
	                    </div>
	                </form>
	            </div>
	        </section>
	        <!-- :form -->
	    </div>
	</div>
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/formValidation.js"></script>
    <script type="text/javascript" src="js/framework/bootstrap.js"></script>

	<script type="text/javascript">
	    $(document).ready(function() {
	        $('#defaultForm').formValidation({
	        	fields: {
                    fone: {
                        message: 'Telefone não é válido',
                        validators: {
                            notEmpty: {
                                message: 'Não esquece o telefone!',
                            },
                           	stringLength: {
                           		min: 8,
                           		max: 15,
                           		message: 'Entre 8 e 12 numeros'
                           		},
                            digits: {
                                message: 'Apenas números'
                            }
                        }
                    }
                }
	        });
	    });
	</script>
</body>
</html>