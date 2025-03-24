
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Projet</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="/ConstructionXpert/resource/Image/freepik__upload__81093-removebg-preview.png" alt="" width="50" height="50">

        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
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

<div class="formulaire container mt-5">
    <h2 class="mb-4 text-center">Créer un Projet</h2>

    <form action="addProjet" method="post" class="border p-4 rounded shadow-sm bg-light">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom du projet</label>
            <input type="text" class="form-control" id="nom" name="nom" placeholder="Entrez le nom du projet" >
            <div class="text-danger" id="error-nom"></div>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="4" placeholder="Décrivez le projet" ></textarea>
            <div class="text-danger" id="error-description"></div>
        </div>

        <div class="row">
            <div class="mb-3 col-md-6">
                <label for="date_debut" class="form-label">Date de début</label>
                <input type="date" class="form-control" id="date_debut" name="date_debut" >
                <div class="text-danger" id="error-date_debut"></div>
            </div>

            <div class="mb-3 col-md-6">
                <label for="date_fin" class="form-label">Date de fin</label>
                <input type="date" class="form-control" id="date_fin" name="date_fin" >
                <div class="text-danger" id="error-date_fin"></div>
            </div>
        </div>

        <div class="mb-3">
            <label for="budget" class="form-label">Budget (€)</label>
            <input type="number" class="form-control" id="budget" name="budget" placeholder="Entrez le budget" step="0.01" min="0" >
            <div class="text-danger" id="error-budget"></div>
        </div>

        <button type="submit" class="btn btn-primary w-100">Enregistrer le projet</button>
    </form>
</div>


<script>
    document.addEventListener('DOMContentLoaded', function () {
        const form = document.querySelector('form[action="addProjet"]');

        form.addEventListener('submit', function (event) {
            event.preventDefault();

            // inputs
            const nom = document.getElementById('nom').value.trim();
            const description = document.getElementById('description').value.trim();
            const dateDebut = document.getElementById('date_debut').value;
            const dateFin = document.getElementById('date_fin').value;
            const budget = document.getElementById('budget').value;

            // Zones d'erreur
            const errorNom = document.getElementById('error-nom');
            const errorDescription = document.getElementById('error-description');
            const errorDateDebut = document.getElementById('error-date_debut');
            const errorDateFin = document.getElementById('error-date_fin');
            const errorBudget = document.getElementById('error-budget');

            // Reset messages d'erreur
            errorNom.textContent = '';
            errorDescription.textContent = '';
            errorDateDebut.textContent = '';
            errorDateFin.textContent = '';
            errorBudget.textContent = '';

            let hasError = false;

            // Validation du nom
            if (nom.length < 3) {
                errorNom.textContent = "Le nom du projet vide au moins contenir 3 caracteres.";
                hasError = true;
            }

            // Validation de description
            if (description.length < 10) {
                errorDescription.textContent = "La description vide au moins contenir 10 caractères.";
                hasError = true;
            }

            // Validation des date
            if (!dateDebut) {
                errorDateDebut.textContent = "La date de début est obligatoire.";
                hasError = true;
            }

            if (!dateFin) {
                errorDateFin.textContent = "La date est obligatoire.";
                hasError = true;
            }

            if (dateDebut && dateFin && new Date(dateDebut) > new Date(dateFin)) {
                errorDateFin.textContent = "La date de fin doit être après la date de début.";
                hasError = true;
            }

            // Validation du budget
            if (budget === "" || parseFloat(budget) < 0) {
                errorBudget.textContent = "Le budget doit être un nombre positif.";
                hasError = true;
            }

            if (!hasError) {
                form.submit();
            }
        });
    });
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
