<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>cadastro_usuarios</title>
</head>

<body>
<div class="jumbotron">
  <div class="container">
<h1>Bem vindo Administrador</h1>
						<p>Cadastre o usuário</p>
				</div>
<a href="index.jsp" target="_blank"><img src="kisspng-home-button-house-icon-house-5a9a9aec76efb8.5686785715200816444872.png" width="33" height="30" alt="home" /></a><a href="login.jsp"><img src="img/kisspng-computer-icons-login-icon-design-logout-5b256c432597c0.137994661529179203154.png" width="33" height="30" alt="sair" /></a></div>
		

<p align="center">&nbsp;</p>

<% 

if (request.getParameter("action") == null)
{ 
    
%>
<form id="formulario01" name="formulario01" method="post" action= 	"cadastro_usuarios.jsp?action=record">
          <label>ID.:
          <input name="caixa_id" type="text" id="caixa_id" size="15" maxlength="15" />
          </label>
          <label>Usu&aacute;rio.:
          <input name="caixa_usuario" type="text" id="caixa_usuario" size="15" maxlength="10" />
          </label>
          <label>Senha.:
          <input name="caixa_senha" type="password" id="caixa_senha" size="15" maxlength="10" />
          </label>
          <strong>Placa.:</strong>
          <input name="caixa_placa" type="text" id="caixa_placa" size="7" maxlength="7" />
          <label>N&iacute;vel de Acesso.:
          <input name="caixa_nivel" type="text" id="caixa_nivel" size="3" maxlength="1" />
          </label>
<p>
            <label></label>
  </p>
  <p>
    <input type="submit" name="gravar" id="gravar" value="gravar" />
  </p>
  <p>
            <label></label>
  </p>
          <p>
            <label></label>
            <label></label>
  </p>
        </form>
        <% } 
		   else 
		   {
		       
			   
			   if ((request.getParameter("caixa_usuario").length() <= 0) || (request.getParameter("caixa_senha").length() <= 0) || (request.getParameter("caixa_nivel").length() <= 0) || (request.getParameter("caixa_placa").length() <= 0))
			   {	       
				   response.sendRedirect("cadastro_usuarios.jsp");
			   }
			   else
			   {		   
			       try
  		           {
	 			      Class.forName("org.postgresql.Driver");
	 		          Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/clientes","postgres","1234");
				      Statement st = con.createStatement();
				  
				     st.executeUpdate("insert into acessos (id_usuario,usuario,senha,placa,nivelacesso) values ("+request.getParameter("caixa_id")+",'"+request.getParameter("caixa_usuario")+"','"+request.getParameter("caixa_senha")+"','"+request.getParameter("caixa_placa")+"','"+request.getParameter("caixa_nivel")+"' )");

				  
				       response.sendRedirect("controle_usuarios.jsp"); //vai para o usuario.jsp
				  
					}catch(ClassNotFoundException errodeclasse)
					{
						out.println("Problema no Driver de Conexao: "+errodeclasse);
					}
				catch(SQLException errodesql)
					{
						out.println("Nao conseguiu encontrar o Banco: "+ errodesql);
				}


		   
		    } 
		}%>

<p>&nbsp;</p>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
