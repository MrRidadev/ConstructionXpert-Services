
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Projet</title>
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
                    <a class="nav-link" href="AfficherProjet.jsp">Projet</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ressource.jsp">Ressource</a>
                </li>

            </ul>

        </div>
    </div>
</nav>

<div class="formulaire container mt-5">
    <h2 class="mb-4 text-center">Créer un Projet</h2>

    <form action="addProjet" method="post" class="border p-4 rounded shadow-sm bg-light">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom du projet</label>
            <input type="text" class="form-control" id="nom" name="nom" placeholder="Entrez le nom du projet" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="4" placeholder="Décrivez le projet" required></textarea>
        </div>

        <div class="row">
            <div class="mb-3 col-md-6">
                <label for="date_debut" class="form-label">Date de début</label>
                <input type="date" class="form-control" id="date_debut" name="date_debut" required>
            </div>

            <div class="mb-3 col-md-6">
                <label for="date_fin" class="form-label">Date de fin</label>
                <input type="date" class="form-control" id="date_fin" name="date_fin" required>
            </div>
        </div>

        <div class="mb-3">
            <label for="budget" class="form-label">Budget (€)</label>
            <input type="number" class="form-control" id="budget" name="budget" placeholder="Entrez le budget" step="0.01" min="0" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">Enregistrer le projet</button>
    </form>
</div>
</body>
</html>
