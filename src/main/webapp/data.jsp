<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div style="display: flex; justify-content: center;">
<img style="width: 200px;" src="imagens/dogHome.png">
</div>

<div class="container-md">

    <p class="text-center fs-1">Dados do seu pet</p>

    <table class="table table-bordered">
        <thead class="">
        <tr>
            <th scope="col">Nome do pet</th>
            <th scope="col">Idade</th>
            <th scope="col">Nome do dono</th>
        </tr>
        </thead>
        <tbody>
        <th scope="row">
            <input type="text" readonly class="form-control-plaintext" id="staticName2" value="<%= request.getAttribute("name") %>">
        </th>
        <th scope="row">
            <input type="text" readonly class="form-control-plaintext" id="staticAge2" value="<%= request.getAttribute("age") %> ano(s)">
        </th>
        <th scope="row">
            <input type="text" readonly class="form-control-plaintext" id="staticOwner2" value="<%= request.getAttribute("owner") %>">
        </th>
        </tbody>
    </table>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>