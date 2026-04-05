<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4 shadow" style="width: 350px;">
        <h3 class="text-center mb-3">Connexion</h3>
        <form action="LoginServlet" method="post">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Mot de passe</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">
                Se connecter
            </button>
        </form>
        <div class="text-center mt-3">
            <a href="signup.jsp">Créer un compte</a>
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