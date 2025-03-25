<%--
  Created by IntelliJ IDEA.
  User: devja
  Date: 25/03/2025
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit taches</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form action="" method="POST">
        <form action="/ConstructionXpert/editTache" method="post">
            <!-- Champ caché pour transmettre l'id du projet -->
            <input type="hidden" name="id_projet" value="${id_projet}">

            <!-- Champ caché pour transmettre l'id de la tâche -->
            <input type="hidden" name="id_tache" value="${tache.id}">

            <div class="mb-3">
                <label for="nom_tache" class="form-label">Nom Tâche:</label>
                <input type="text" class="form-control" name="nom_tache" id="nom_tache" value="${tache.nom_tache}" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea class="form-control" name="description" id="description" required>${tache.description}</textarea>
            </div>

            <div class="mb-3">
                <label for="dateDebut" class="form-label">Date Début:</label>
                <input type="date" class="form-control" name="dateDebut" id="dateDebut" value="${tache.dateDebut}" required>
            </div>

            <div class="mb-3">
                <label for="dateFin" class="form-label">Date Fin:</label>
                <input type="date" class="form-control" name="dateFin" id="dateFin" value="${tache.dateFin}" required>
            </div>

            <div class="mb-3">
                <label for="ressource" class="form-label">Ressource:</label>
                <input type="text" class="form-control" name="ressource" id="ressource" value="${tache.ressource}" required>
            </div>

            <button type="submit" class="btn btn-primary">Modifier la tâche</button>
        </form>


    </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</body>
</html>
