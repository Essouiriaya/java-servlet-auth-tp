<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2>Connexion</h2>
<form action="LoginServlet" method="post">
    Email: <input type="email" name="email" required /><br/>
    Mot de passe: <input type="password" name="password" required /><br/>
    <input type="submit" value="Se connecter" />
</form>
<a href="signup.jsp">Créer un compte</a>
<% if(request.getAttribute("error") != null) { %>
    <p style="color:red;"><%= request.getAttribute("error") %></p>
<% } %>
</body>
</html>