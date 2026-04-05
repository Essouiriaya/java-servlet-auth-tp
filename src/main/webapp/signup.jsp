<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
<h2>Créer un compte</h2>
<form action="SignUpServlet" method="post">
    Nom Complet: <input type="text" name="name" required /><br/>
    Email: <input type="email" name="email" required /><br/>
    Mot de passe: <input type="password" name="password" required /><br/>
    Confirmer mot de passe: <input type="password" name="confirmPassword" required /><br/>
    <input type="submit" value="S'inscrire" />
</form>
<a href="login.jsp">Déjà inscrit ? Connectez-vous</a>
</body>
</html>