<%@page contentType="text/html; UTF-8" language="java" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/ConstructionXpert/resource/Css/index.css">
</head>
<body>

<%--navBar--%>
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
<%--fin Navbar--%>


<main class="d-flex flex-column flex-md-row justify-content-between container mt-5 h-75">
    <div class="text-center text-md-start">
        <h1>
            "Construire l'avenir, pierre par pierre, avec passion et expertise."</h1>
        <a class="btn btn-warning mt-2" href="projet.jsp">Ajouter Projet</a>
    </div>
    <div class="text-center mt-4 mt-md-0">
        <script src="https://unpkg.com/@dotlottie/player-component@2.7.12/dist/dotlottie-player.mjs" type="module"></script>
        <dotlottie-player src="https://lottie.host/6473db68-53d3-452c-b708-1abd5ba49e76/16ik9gj9GV.lottie" background="transparent" speed="1" style="width: 100%; max-width: 300px; height: auto;" loop autoplay></dotlottie-player>
    </div>
</main>



<!-- Footer -->
<footer class="bg-light text-dark text-center py-3 mt-5">
    <div class="container">
        <!-- Logo -->
        <div class="mb-2">
            <img src="/ConstructionXpert/resource/Image/freepik__upload__81093-removebg-preview.png"  alt="Logo" style="width: 50px; height: 50px;">
        </div>

        <!-- Copyright et texte -->
        <p class="mb-0">&copy; 2025 ConstructionXpert - Tous droits reserves.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
