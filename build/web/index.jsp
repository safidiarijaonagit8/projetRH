<%-- 
    Document   : Affichage
    Created on : 15 févr. 2022, 16:27:03
    Author     : Mendrikaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
        
        <link rel="stylesheet" href="rh.css" media="screen" type="text/css" />
    </head>
    <body>
        <div id="container">
            <form action="insertionEmploye.jsp" method="POST">
                <h1>Connexion</h1>
                
                <label><b>Username</b></label>
                <input type="text" placeholder="username" name="username" required>

                <label><b>Mot de passe</b></label>
                <input type="password" placeholder="password" name="password" required>

                <input type="submit" id='submit' value='connexion' >
            </form>
        </div>
    </body>
</html>
