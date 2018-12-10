<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Controle de Usuarios</title>
<style type="text/css">
<!--
.style2 {color: #000000}
.style3 {color: #FFFFFF}
-->
</style>
</head>

<body>
<div class="jumbotron">
				<div class="container">
						<h1>Bem vindo Administrador</h1>
						<p>Gerencie os usuários</p>
				</div>
                <a href="cadastro_usuarios.jsp"><img src="img/kisspng-computer-icons-download-icon-svg-add-5ab055e47b53b7.3576841815215057645052.png" alt="adicionar" width="33" height="30" border="0" align="baseline" /></a><a href="index.jsp" target="_blank"><img src="kisspng-home-button-house-icon-house-5a9a9aec76efb8.5686785715200816444872.png" width="33" height="30" alt="home" /></a><a href="login.jsp"><img src="img/kisspng-computer-icons-login-icon-design-logout-5b256c432597c0.137994661529179203154.png" width="33" height="30" alt="sair" /></a></div>
				

		        <div align="center"></div>
		        <div class="divider"></div>
		        <table width="705" height="197" border="1" align="center" id="tabela_usuarios">
          <tr bgcolor="#EEEEEE">
            <td><span class="style2">ID</span></td>
            <td><span class="style2">Cliente</span></td>
            <td><span class="style2">Senha</span></td>
            <td><span class="style2">Placa</span></td>
            <td><span class="style2">Localizacao</span></td>
            <td><span class="style2">Nivel de Acesso </span></td>
            <td><span class="style2">Modificar</span></td>
            <td><span class="style2">Excluir</span></td>
          </tr>
<%

try{
	Class.forName("org.postgresql.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/clientes","postgres","1234");
	Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
	
	//verifica exclusao
	if(request.getParameter("action") != null)
		{
			st.executeUpdate("delete from acessos where id_usuario = "+request.getParameter("id_usuario"));
		}
	
	 
	ResultSet rs = st.executeQuery("select * from acessos");
	while(rs.next())//enquanto tiver dados jogar na tabela
	{ %>
			  
		  
		  	<tr>
            <td><%=rs.getString("id_usuario")%></td>
            <td><%=rs.getString("usuario")%></td>
            <td><%=rs.getString("senha")%></td>
            <td><%=rs.getString("placa")%></td>
            <td><a href="https://www.google.com.br/maps/place/41%C2%B001'48.2%22N+82%C2%B030'56.6%22W/@41.030054,-82.517924,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d41.03005!4d-82.51573" target="_blank"><%=rs.getString("localizacao")%></a></td>
            <td><%=rs.getString("nivelacesso")%></td>
            <td><div align="center"><a href="modifica_usuarios.jsp?id_usuario=&lt;$=rs.getString(&quot;id_usuario&quot;)%&gt;&amp;usuario=&lt;$=rs.getString(&quot;usuario&quot;)%&gt;&amp;senha=&lt;$=rs.getString(&quot;senha&quot;)%&gt;&amp;placa=&lt;$=rs.getString(&quot;placa&quot;)%&gt;&amp;nivelacesso=&lt;$=rs.getString(&quot;nivelacesso&quot;)%&gt;"><img src="img/kisspng-svg-edit-blue-pencil-computer-icons-x-5aebf59ab050a6.6845026415254132747222.png" alt="editar" width="33" height="30" border="0" /></a></div></td>
            <td><div align="center">
              <label></label>
<form id="form1" name="form1" method="post" action="">
            <label></label>
                <a href="controle_usuarios.jsp?action=delete&amp;id_usuario=<%=rs.getString("id_usuario")%>"><img src="img/kisspng-computer-icons-vector-graphics-image-icon-design-i-flat-delete-icon-bing-images-5b7b43c032d322.0374950915348049282082.png" alt="excluir" width="33" height="30" border="0" /></a>
              </form>
              </div></td>
          </tr>
		  
<%			}
	  
	}catch(ClassNotFoundException errodeclasse)
			{
	out.println("Problema no Driver de Conexao: "+errodeclasse);
					}
	catch(SQLException errodesql)
			{
	out.println("Nao conseguiu encontrar o Banco: "+ errodesql);
				}


%>	
</table>	
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>