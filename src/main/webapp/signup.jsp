<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4 shadow" style="width: 380px;">
        <h3 class="text-center mb-3">Créer un compte</h3>
        <form action="SignUpServlet" method="post">
            <div class="mb-3">
                <label class="form-label">Nom complet</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Mot de passe</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Confirmer mot de passe</label>
                <input type="password" name="confirmPassword" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success w-100">
                S'inscrire
            </button>
        </form>
        <div class="text-center mt-3">
            <a href="login.jsp">Déjà inscrit ? Connectez-vous</a>
        </div>

        <%
            String error = (String) request.getAttribute("error");
            if(error != null){
        %>
            <div class="alert alert-danger mt-3">
                <%= error %>
            </div>
        <%
            }
        %>

    </div>
</div>
</body>
</html>