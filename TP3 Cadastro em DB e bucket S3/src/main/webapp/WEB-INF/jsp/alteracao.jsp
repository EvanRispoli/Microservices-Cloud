<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Cadastro</title>
</head>
<body>
<div class="container">

  <form action="/pessoa/alterar" method="post" enctype="multipart/form-data">
    <c:if test="${not empty pessoa.nome}">
      <div class="form-group">
        <label>Nome</label>
        <input class="form-control" name="nome" value="${pessoa.nome}" required type="text" y>
      </div>
    </c:if>
    <c:if test="${empty pessoa.nome}">
      <div class="form-group">
        <label>Nome</label>
        <input class="form-control" name="nome" placeholder="Informe seu nome" required type="text"  >
      </div>
    </c:if>

    <c:if test="${not empty pessoa.email}">
      <div class="form-group">
        <label>Email</label>
        <input class="form-control" name="email" value="${pessoa.email}" required type="text" y>
      </div>
    </c:if>
    <c:if test="${empty pessoa.email}">
      <div class="form-group">
        <label>Email</label>
        <input class="form-control" name="email" placeholder="Informe seu email" required type="text"  >
      </div>
    </c:if>

    <c:if test="${not empty pessoa.telefone}">
      <div class="form-group">
        <label>Telefone</label>
        <input class="form-control" name="telefone" value="${pessoa.telefone}" required type="text" y>
      </div>
    </c:if>
    <c:if test="${empty pessoa.telefone}">
      <div class="form-group">
        <label>Telefone</label>
        <input class="form-control" name="telefone" placeholder="Informe seu telefone" required type="text"  >
      </div>
    </c:if>

    <c:if test="${not empty pessoa.endereco.logradouro}">
      <div class="form-group">
        <label>Logradouro</label>
        <input class="form-control" name="logradouro" value="${pessoa.endereco.logradouro}" required type="text"  >
      </div>
    </c:if>
    <c:if test="${empty pessoa.endereco.logradouro}">
      <div class="form-group">
        <label>Logradouro</label>
        <input class="form-control" name="logradouro" placeholder="Informe seu logradouro" required type="text"  >
      </div>
    </c:if>

    <c:if test="${not empty pessoa.endereco.numero}">
      <div class="form-group">
        <label>Numero</label>
        <input class="form-control" name="numero" value="${pessoa.endereco.numero}" required type="text" y>
      </div>
    </c:if>
    <c:if test="${empty pessoa.endereco.numero}">
      <div class="form-group">
        <label>Numero</label>
        <input class="form-control" name="numero" placeholder="Informe seu numero" required type="text"  >
      </div>
    </c:if>
    <c:if test="${not empty pessoa.endereco.complemento}">
      <div class="form-group">
        <label>Complemento</label>
        <input class="form-control" name="complemento" value="${pessoa.endereco.complemento}" type="text" y>
      </div>
    </c:if>
    <c:if test="${empty pessoa.endereco.complemento}">
      <div class="form-group">
        <label>Complemento</label>
        <input class="form-control" name="complemento" placeholder="Informe seu complemento" type="text"  >
      </div>
    </c:if>
    <c:if test="${not empty pessoa.endereco.bairro}">
      <div class="form-group">
        <label>Bairro</label>
        <input class="form-control" name="bairro" value="${pessoa.endereco.bairro}" required type="text"  >
      </div>
    </c:if>
    <c:if test="${empty pessoa.endereco.bairro}">
      <div class="form-group">
        <label>Bairro</label>
        <input class="form-control" name="bairro" placeholder="Informe seu bairro" required type="text">
      </div>
    </c:if>

    <c:if test="${not empty pessoa.endereco.localidade}">
      <div class="form-group">
        <label>Localidade</label>
        <input class="form-control" name="localidade" value="${pessoa.endereco.localidade}" required type="text"  >
      </div>
    </c:if>
    <c:if test="${empty pessoa.endereco.localidade}">
      <div class="form-group">
        <label>Localidade</label>
        <input class="form-control" name="localidade" placeholder="Informe sua localidade" required type="text">
      </div>
    </c:if>

    <c:if test="${not empty pessoa.endereco.uf}">
      <div class="form-group">
        <label>UF</label>
        <input class="form-control" name="uf" value="${pessoa.endereco.uf}" required type="text"  >
      </div>
    </c:if>
    <c:if test="${empty pessoa.endereco.uf}">
      <div class="form-group">
        <label>UF</label>
        <input class="form-control" name="uf" placeholder="Informe sua UF" required type="text">
      </div>
    </c:if>
    <c:if test="${not empty pessoa.endereco.cep}">
      <div class="form-group">
        <label>CEP</label>
        <input class="form-control" name="cep" value="${pessoa.endereco.cep}" required type="text"  >
      </div>
    </c:if>
    <c:if test="${empty pessoa.endereco.cep}">
      <div class="form-group">
        <label>CEP</label>
        <input class="form-control" name="cep" placeholder="Informe seu CEP" required type="text">
      </div>
    </c:if>
    <div class="form-group">
      <label>Imagem</label>
      <input class="form-control" name="imagem" type="file" required>
    </div>
    <input class="form-control" name="id" value="${pessoa.id}" required type="hidden">

    <input type="submit" value="Cadastrar">
  </form>
</div>
</body>
</html>
