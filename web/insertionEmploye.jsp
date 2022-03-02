<%-- 
    Document   : insertionEmploye
    Created on : 15 févr. 2022, 22:42:06
    Author     : Mendrikaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inserer Employe</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="rhInserer.css"
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <form action="liste.jsp" method="POST">
          <h2>Insertion d'employe</h2>
        <div class="form-row">
           <div class="form-group col-md-6">
            <label for="Nom">Nom</label>
            <input type="text" class="form-control" id="nom" >
           </div>
        <div class="form-group col-md-6">
            </br><label for="Prenom">Prenom</label>
           <input type="text" class="form-control" id="prenom" >
        </div>
        <div class="form-group">
            </br><label for="dtn">date de naissance</label>
            <input type="text" class="form-control" id="dtn" placeholder="jj/mm/aa">
        </div>
          <div class="form-group">
            </br><label for="dtn">Sexe</label>
            <input type="radio" id="toggle1" name="toggle" >
            <label  for="customRadioInline1">Masculin</label>
            <input type="radio" id="toggle2" name="toggle" >
            <label  for="toggle2">Feminin</label>
          </div>
        <div class="form-group">
            </br><label for="Address">Address</label>
            <input type="text" class="form-control" id="Address" >
        </div>
        <div class="form-group col-md-4">
            </br><label for="Poste">Poste</label>
            <select id="inputState" class="form-control">
                <option selected>Poste</option>
                <option>...</option>
            </select>
        </div>
        <div class="form-group">
            </br><label for="dtn">date d'embauche</label>
            <input type="text" class="form-control" id="dtn" placeholder="jj/mm/aa">
        </div>
       <div class="form-group col-md-4">
            </br><label for="Poste">Type de contrat</label>
            <select id="inputState" class="form-control">
                <option selected>Contrat</option>
                <option>...</option>
            </select>
        </div>
        </div>
        </br><button type="submit" class="b">INSERER</button>
      </form>
    </body>
</html>
