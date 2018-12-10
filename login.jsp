<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login de Usuarios</title>
<style type="text/css">
<!--
body {
	background-image: url(img/mac-wallpaper6.jpg);
}
.style1 {color: #FFFFFF}
-->
</style></head>

<body>	

<!--codigo java do acesso ao bd -->
<%

try{
	Class.forName("org.postgresql.Driver"); //Abre o Driver
	Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/clientes","postgres","1234");
//Objeto que faz a conexao com o banco

if (request.getParameter("login") != null) //verifica se o campo esta em branco
{
Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY); 
//Conexao com a tabela de usuarios
ResultSet rs = st.executeQuery("select *from acessos where usuario = '"+request.getParameter("login")+"' and senha =  '"+request.getParameter("senha")+"'");
//Manipula os dados

if (rs.next())
	response.sendRedirect("index.jsp");
	else
		out.println("Credenciais invalidas!");

}
}catch(ClassNotFoundException errodeclasse){
	out.println("Problema no Driver de Conexao: "+errodeclasse);
}catch(SQLException errodesql){
	out.println("Nao conseguiu encontrar o Banco: "+ errodesql);
}

%>




<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><img src="img/user-1699635_1280.png" alt="avatar2" width="125" height="101" /></p>
<form id="form1" name="form1" method="post" action="">
  <div align="center"></div>
  <label>
  <div align="center">
    <table width="200" border="1">
      <tr>
        <td colspan="2"><div align="center" class="style1">ACESSO</div></td>
      </tr>
      <tr>
        <td width="78"><div align="center"><span class="style1">Login</span></div></td>
        <td width="106"><input name="login" type="text" maxlength="10" /></td>
      </tr>
      <tr>
        <td><div align="center"><span class="style1">Senha</span></div></td>
        <td><input name="senha" type="text" maxlength="10" /></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <input name="Entrar" type="submit" id="Entrar" value="Entrar" />
        </div></td>
      </tr>
    </table>
  </div>
  </label>
</form>

<form id="form2" name="form2" method="post" action="">
  <label>
  </label></form>
</body>
</html>
