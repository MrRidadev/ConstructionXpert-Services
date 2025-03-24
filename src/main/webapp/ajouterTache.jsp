<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter une tâche</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<% System.out.println(request.getParameter("id"));%>
<% if(request.getAttribute("err")!=null){%>
<div class="alert alert-danger" role="alert">
 <%=request.getAttribute("err")%>
</div>
<%}%>
<div class="container mt-5">
    <h2 class="mb-4">Ajouter une tâche au projet ${id}</h2>

    <form action="${pageContext.request.contextPath}/ajouterTache" method="post">
        <!-- Champ caché qui transmet l'id du projet -->
        <input type="hidden" name="id" value="${id}">

        <div class="mb-3">
            <label for="nom_tache" class="form-label">Nom Tâche:</label>
            <input type="text" class="form-control" name="nom_tache" id="nom_tache" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description:</label>
            <textarea class="form-control" name="description" id="description" required></textarea>
        </div>

        <div class="mb-3">
            <label for="dateDebut" class="form-label">Date Début:</label>
            <input type="date" class="form-control" name="dateDebut" id="dateDebut" required>
        </div>

        <div class="mb-3">
            <label for="dateFin" class="form-label">Date Fin:</label>
            <input type="date" class="form-control" name="dateFin" id="dateFin" required>
        </div>

        <div class="mb-3">
            <label for="ressource" class="form-label">Ressource:</label>
            <input type="text" class="form-control" name="ressource" id="ressource" required>
        </div>

        <button type="submit" class="btn btn-primary">Ajouter la tâche</button>
    </form>


</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
