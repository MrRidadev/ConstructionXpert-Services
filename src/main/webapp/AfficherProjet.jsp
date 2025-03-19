
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="utf-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE HTML>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light text-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="/ConstructionXpert/resource/Image/freepik__upload__81093-removebg-preview.png" alt="" width="50" height="50">
        </a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="gestion.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="getProjet">Projet</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ressource.jsp">Ressource</a>
                </li>

            </ul>

        </div>
    </div>
</nav>
<table class="table container mt-2">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">nom</th>
        <th scope="col">description</th>
        <th scope="col">date_debut</th>
        <th scope="col">date_Fin</th>
        <th scope="col">budget</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="projet" items="${projets}">
    <tr>
        <th scope="row">${projet.id}</th>
        <td>${projet.nom}</td>
        <td>${projet.description}</td>
        <td>${projet.date_debut}</td>
        <td>${projet.date_fin}</td>
        <td>${projet.budget}</td>

        <td>
            <button class="btn btn-warning">modifier</button>
            <button class="btn btn-danger">supprimer</button>
            <button class="btn btn-info">Ajouter tache</button>
        </td>
    </tr>
</c:forEach>
    </tbody>
</table>
</body>
</html>
