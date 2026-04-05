<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
        }
        .card {
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .btn-custom {
            width: 150px;
            margin: 10px;
        }
        h1 {
            margin-bottom: 20px;
            color: #343a40;
        }
    </style>
</head>
<body>
    <div class="card text-center">
        <h1>Bienvenue</h1>
        <p>Veuillez vous connecter ou créer un compte pour continuer.</p>
        <div>
            <a href="login.jsp" class="btn btn-primary btn-custom">Login</a>
            <a href="signup.jsp" class="btn btn-success btn-custom">Sign Up</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>