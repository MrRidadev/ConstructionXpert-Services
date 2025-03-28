
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier Projet</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="container mt-5">

<h2>Modifier Projet</h2>

<form action="updateProjet" method="post" class="mt-4">
    <input type="hidden" name="id" value="${projets.id}"/>

    <div class="mb-3">
        <label for="nom" class="form-label">Nom</label>
        <input type="text" class="form-control" name="nom" id="nom" value="${projets.nom}" required>
    </div>

    <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea class="form-control" name="description" id="description" rows="3" required>${projets.description}</textarea>
    </div>

    <div class="mb-3">
        <label for="date_debut" class="form-label">Date Début</label>
        <input type="date" class="form-control" name="date_debut" id="date_debut" value="${projets.date_debut}" required>
    </div>

    <div class="mb-3">
        <label for="date_fin" class="form-label">Date Fin</label>
        <input type="date" class="form-control" name="date_fin" id="date_fin" value="${projets.date_fin}" required>
    </div>

    <div class="mb-3">
        <label for="budget" class="form-label">Budget</label>
        <input type="number" class="form-control" name="budget" id="budget" value="${projets.budget}" step="0.01" required>
    </div>


    <button type="submit" class="btn btn-primary text-white">
        <i class="bi bi-save me-2"></i> Enregistrer
    </button>
    <a href="getProjet" class="btn btn-secondary">
        <i class="bi bi-arrow-left me-2"></i> Annuler
    </a>
</form>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
