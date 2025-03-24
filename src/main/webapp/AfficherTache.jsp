
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>AfficherTaches</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="gestion.jsp">
            <img src="/ConstructionXpert/resource/Image/freepik__upload__81093-removebg-preview.png" alt="" width="50" height="50">

        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
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
            <form class="d-flex">

                <a href="" class="btn btn-success me-2 ">
                    Log in
                </a>
                <a href="" class="btn btn-primary ">
                    Sign up
                </a>
            </form>
        </div>
    </div>
</nav>
<c:forEach var="tache" items="${taches}">

    <a href="AddrTache?id=${tache.id_projet}" class="btn btn-success rounded-circle shadow position-fixed" style="bottom: 20px; right: 20px; width: 60px; height: 60px; display: flex; align-items: center; justify-content: center;">
        <input type="hidden" name="id" value="${tache.id_projet}">
        <i class="bi bi-plus-lg fs-4"></i>
    </a>
</c:forEach>


<div class="container py-4">
    <div class="row">
        <!-- Répéter cette div pour chaque tâche -->
        <c:forEach var="taches" items="${taches}">
        <div class="col-12 mb-4">

            <div class="card shadow-sm flex-row">
                <div class="card-body d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center w-100">


            <div>
                        <h5 class="card-title fw-bold">${taches.nom_tache}</h5>
                        <p class="card-text text-muted small mb-1">${taches.description}</p>
                        <ul class="list-unstyled mb-1 small">
                            <li><i class="bi bi-calendar-event me-2"></i><strong>Début :</strong>${taches.date_debut}</li>
                            <li><i class="bi bi-calendar-check me-2"></i><strong>Fin :</strong>${taches.date_fin}</li>
                        </ul>
                        <p class="small mb-0">
                            <i class="bi bi-person-fill me-2"></i><strong>Ressource :</strong>${taches.ressource}
                        </p>

                    </div>

                    <div class="mt-3 mt-md-0 d-flex">
                        <button type="button" class="btn btn-warning btn-sm me-2">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                        <button type="button" class="btn btn-danger btn-sm">
                            <i class="bi bi-trash"></i>
                        </button>
                    </div>
                </div>
            </div>

        </div>
        </c:forEach>
        <!-- Fin de la tâche -->
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
