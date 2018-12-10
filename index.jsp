<!DOCTYPE html>
<html>
<head>

			<meta charset = "utf-8">
			<title> Exercicio 3b </title>
			<link href="css/bootstrap.min.css" rel = "stylesheet">

</head>

<body>
		<div class = "jumbotron">
		<div class = "container">

		<h1>Home</h1>

		</div>
		<a href="login.jsp"><img src="img/kisspng-computer-icons-login-icon-design-logout-5b256c432597c0.137994661529179203154.png" width="33" height="30" alt="sair" /></a></div>

<div class="container">
    <div class="row">
		<div class="col-md-12">
			<h3>Seja Bem-vindo !</h3>
<!---->
			<div class="tabbable-panel">
				<div class="tabbable-line">
				<ul class="nav nav-tabs ">
			    <li class="active">
					<a href="#tab_default_1" data-toggle="tab">
						Dados do cliente </a>
						</li>
						<li>
							
					<a href="#tab_default_2" data-toggle="tab">
						Dados do Veículo</a>
						</li>
						<li>

						<a href="#tab_default_3" data-toggle="tab">
						Localizacao </a>
						</li>
					    </ul>

					 <!--Div teste--></div>

<!---->

					<div class="tab-content">
						<div class="tab-pane active" id="tab_default_1">
						<!--Conteudo-->
						<h4><a href="controle_usuarios.jsp">Controle de usuarios </a></h4>

						</div>




						<div class="tab-pane" id="tab_default_2">
                        <!--Codigo do formulario-->



<div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Preencha os dados</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-5">
                    <i class="fa fa-user prefix grey-text"></i>
                    <input type="text" id="form34" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="form34">Nome</label>
                </div>

                <div class="md-form mb-5">
                    <i class="fa fa-envelope prefix grey-text"></i>
                    <input type="email" id="form29" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="form29">CPF</label>
                </div>

                <div class="md-form mb-5">
                    <i class="fa fa-tag prefix grey-text"></i>
                    <input type="text" id="form32" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="form32">Telefone</label>
                </div>

                <div class="md-form mb-5">
                    <i class="fa fa-tag prefix grey-text"></i>
                    <input type="text" id="form32" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="form32">Email</label>
                </div>

                <div class="md-form mb-5">
                    <i class="fa fa-tag prefix grey-text"></i>
                    <input type="text" id="form32" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="form32">Data de nascimento</label>
                </div>

                

            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-unique">Enviar <i class="fa fa-paper-plane-o ml-1"></i></button>
            </div>
        </div>
    </div>
</div>

<div class="text-center">
    <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalContactForm">Preencher Formulario</a>
</div>


						</div><!--Div que fecha a aba 2-->




						<div class="tab-pane" id="tab_default_3">


<style>
#tabela{
width:600px;
height:100px;
text-align:center;
}

.linha{
width:50px;
height:20px;
}
.linha:hover{
background-color:#00FF33;
}
</style>






						<h1>tabela de inflacao</h1>	

	<hr>
<table id="tabela" border="1">
<tr>
<td>indice</td>
<td>mes</td>
<td>valor</td>
</tr>

<tr class="linha">
<td>IPCA</td>
<td>FEV.17</td>
<td>+0,33%</td>
</tr>


<tr class="linha">
<td>IPC-FIPE</td>
<td>FEV.17</td>
<td>+0.08%</td>
</tr>

<tr class="linha">
<td>IGP-M</td>
<td>FEV.17</td>
<td>+0,08%</td>
</tr>

<tr class="linha">
<td>INPC</td>
<td>FEV.17</td>
<td>+0,24%</td>
</tr>


</table>


	<hr>

					
	

						</div><!--Div que fecha a aba 3-->


				
		</div>
	</div>
</div>




<br>
<br>
<center>
<strong>Feito Cassio de Oliveira</strong>
</center>
<br>
<br>



<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>		