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
                .t {margin-left: 500px}
                .k {width: 250px;
                    margin-left: 800px
                }
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
    <div class="k">
        <div class="form-group col-md-6" width="200">
            <label for="inputSexe">Annee</label>
	              <select id="inputSexe" class="form-control" name="sexe">
	                <option></option>
	              </select>
                      <button type="button" class="btn btn-light">Voir </button>
	           </div>
    </div>
        <div>
            </br></div>
	<table border ="1" class="t">
		<th>Numero Employe</th>
                <th>Annee</th>
                <th>Solde(/jours)</th>
	<tr>
            <td>L1 C1</td>
            <td>L1 C2</td>
            <td>L1 C3</td>
        </tr>
</table></br>

</div>
</body>
</html>