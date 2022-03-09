<%-- 
    Document   : liste
    Created on : 16 févr. 2022, 14:10:00
    Author     : Mendrikaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='fr'>
     <style>
		th                 { background-color : #557CBA; }
		/* Alternance de couleur sur les lignes */
		tr:nth-child(even) { background-color : #CED4E5; }
		tr:nth-child(odd)  { background-color : #E8EBF5; }
                
                body               {background: #67BE4B;}
                table              {border-collapse: collapse;}
                .trier             {float: right;
                                    margin-right: 100px;
                                   }
                .b                  {margin-left: 50px }
                .btn-group         { margin-left: 100px}
                .dec {margin-left: 1200px}
	</style>
<head>
	<meta charset="UTF-8">
	<title>Ressources humaines</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
	<div id="header">
		<div class="clearfix">
                    <h1> LISTE DES EMPLOYES<h1>
		</div>
	</div>
       
        <div>
           
            </br></br><a href="insertionEmploye.jsp"<button type="button" class="btn btn-success">Ajouter Employe</button></a>
         
            </br></div></br></br>
	<table border ="1" width="1350">
		<th>Nom</th><th>Prenom</th><th>Sexe</th><th>Poste</th><th>Contrat</th><th>Departement</th><th>Date embauche</th><th>Modifier</th><th>Supprimer</th></tr>
		<tr>
            <td>L1 C1</td>
            <td>L1 C2</td>
            <td>L1 C3</td>
            <td>L1 C4</td>
            <td>L1 C1</td>
            <td>L1 C1</td>
            <td>L1 C1</td>
            
           
            <td><a href="ModifierEmploye.jsp" ><button type="button" class="btn btn-primary">Modifier</button></a></td>
            <td><a href="SupprimerEmploye.jsp" ><button type="button" class="btn btn-danger">Supprimer</button></a></td>
            </form>
        </tr>
</table></br>
<div class="btn-group">
<h3>Recherche:</h3>
</div>
   <div class="btn-group">  
    <label for="inputSexe">Poste</label>
    <select>
        <option value="1"></option>
    </select>
  
</div>
<div class="btn-group">  
    <label for="inputSexe">Type Contrat</label>
    <select>
        <option value="1"></option>
    </select>
    <div>
   <div class="btn-group" >
    <button type="button" >
        <span class="visually-hidden">Rechercher</span>
    </button>  
   </div>
    </div>
</div>
<div class="dec">
   
    </br><a href="index.jsp"<button type="button" class="btn btn-success">Deconnexion</button></a>
</div>
</body>
</html>