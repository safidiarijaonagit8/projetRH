<%-- 
    Document   : liste
    Created on : 16 févr. 2022, 14:10:00
    Author     : Mendrikaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='fr'>
<head>
	<meta charset="utf-8">
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
	</style>
</head>
<body>
        <div class="trier">
            <form action="listeTrier.jsp" method="POST">
                </br><label for="Poste">Trier</label>
                <select id="inputState" class="form-control">
                    <option selected>Type de contrat</option>
                    <option>...</option>
                </select>
                </br></br><input type="submit" class="b" id='submit' value='Rechercher' >
            </form>
        </div>
        <div class="a">
            <form action="insertionEmploye.jsp" method="POST">
                </br></br><input type="submit" id='submit' value='Ajouter' >
            </form>
        </div>
	<table border ="1" width="1350">
		<th>Nom</th><th>Prenom</th><th>Sexe</th><th>Poste</th><th>Contrat</th><th>Departement</th><th>Duree Contrat</th><th>Date embauche</th></tr>
		<tr><td>L1 C1</td><td>L1 C2</td><td>L1 C3</td><td>L1 C4</td><td>L1 C1</td><td>L1 C1</td><td>L1 C1</td><td>L1 C1</td></tr>
	</table>
</body>
</html>