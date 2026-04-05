<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h2>Bienvenue</h2>
<p>
    Connecté en tant que : <%= ((com.tp.model.User)session.getAttribute("user")).getName() %>
</p>
<a href="LogoutServlet">Se déconnecter</a>
</body>
</html>