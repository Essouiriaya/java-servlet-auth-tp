<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4 shadow text-center" style="width: 400px;">
        <h3 class="mb-3">Bienvenue</h3>
        <p class="mb-4">
            Connecté en tant que :
            <strong>
                <%= ((com.tp.model.User)session.getAttribute("user")).getName() %>
            </strong>
        </p>
        <a href="LogoutServlet" class="btn btn-danger">
            Se déconnecter
        </a>
    </div>
</div>
</body>
</html>