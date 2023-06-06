<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Jogos-Lista</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Jogos</h1>
        <a href="/insert" class="btn btn-primary">Novo Jogo</a>
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Título</th>
                <th>Ano de Lançamento</th>
            </tr>
            <c:forEach var="jogo" items="${jogos}">
                <tr>
                    <td>${jogo.id}</td>
                    <td>${jogo.titulo}</td>
                    <td>${jogo.anoDeLancamento}</td>
                    <td>
                        <a href="/update?id=${jogo.id}" class="btn btn-warning">Editar</a>
                        <a href="/delete?id=${jogo.id}" class="btn btn-danger">Excluir</a>

                    </td>
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>

</html>
