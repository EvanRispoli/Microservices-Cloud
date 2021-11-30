<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Home</title>
</head>
<body>
    <div class="container">
        <div>
            <form action="/pessoa/cep" method="get">
                <input type="submit" value="Cadastrar">
            </form>
        </div>
        <br/>
        <div>
            <form action="/pessoa/listar" method="get">
                <input type="submit" value="Listar Todos">
            </form>
        </div>
        <br/>
        <div class="">
            <form action="/pessoa/pesquisar" method="get">
                <input type="email" name="email" class="form-control">
                <br/>
                <input type="submit" value="Buscar Por Email">
            </form>
        </div>
    </div>
</body>
</html>