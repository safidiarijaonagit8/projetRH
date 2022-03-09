<!DOCTYPE HTML>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Ressources humaines</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
	<div id="header">
		<div class="clearfix">
                    <h1> DEMANDE DE CONGE DE MATERNITE<h1>
		</div>
	</div>
	<div id="contents">
          <div class="clearfix">
            <div class="sidebar">
               <div>
                <h2>Practices</h2>
		<ul>
                    <li>
                        <a href="choixConge.jsp">Demander Conge</a>
                    </li>
                    <li>
                        <a href="acceuilConge.jsp">Valider Conge</a>
                    </li>
                    <li>
                        <a href=".html">Voir Solde Conge</a>
                    </li>
		</ul>
                </div>
            </div>
            <div class="main">
                                <div class="form-group col-md-6">
                                    <label for="inputPrenom">Date de debut</label>
                                    <input type="date" class="form-control" name="dateD" placeholder="Debut le">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPrenom">Date de fin</label>
                                    <input type="date" class="form-control" name="DateF" placeholder="Fin le">
                                </div>
                <p> Ne doit pas depasser 90 jours </p>
                <button type="button" class="btn btn-success">Demander</button>
                <a href="resultatConge.jsp"<button type="button" class="btn btn-warning">Voir resultat</button></a>
			</div>
		</div>
	</div>
	</div>
</body>
</html>