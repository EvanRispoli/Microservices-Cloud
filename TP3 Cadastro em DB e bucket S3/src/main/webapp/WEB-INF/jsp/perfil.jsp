<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <meta charset="UTF-8">
  <title>Perfil</title>
</head>
<body>
<div class="container">
  <c:if test="${not empty imagem}">
  <div>
    <img src="data:image/png;base64, ${imagem}"  />
  </div>
  </c:if>
  <div >
    <h3>Nome: ${pessoa.nome}</h3>
  </div>
  <div >
    <h3>Email: ${pessoa.email}</h3>
  </div >

    <div >
      <h3>Telefone: ${pessoa.telefone}</h3>
    </div>
  <div >
    <h3>Endereco: ${pessoa.endereco.logradouro}, nº${pessoa.endereco.numero}, ${pessoa.endereco.complemento}, ${pessoa.endereco.bairro},
      <br>${pessoa.endereco.localidade}, ${pessoa.endereco.cep} </h3>
  </div>
  </div>
  <div>
    <form method="GET" action="/">
      <input type="submit" value="Voltar para Home">
    </form>
  </div>
</body>
</html>