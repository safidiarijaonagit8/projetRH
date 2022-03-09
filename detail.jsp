<%-- 
    Document   : SupprimerEmploye
    Created on : 9 mars 2022, 21:55:17
    Author     : Mendrikaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <h1> DETAIL DES CONGES<h1>
		</div>
	</div>
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
 
            <div class="form-group col-md-6">
              <label for="inputNom">Numero Employe :</label>
              <p></p>
            </div>
            <div class="form-group col-md-6">
              <label for="inputNom">Motif :</label>
              <p></p>
            </div>
          
           <div class="form-group col-md-6">
              <label for="inputNom">Nombre de jour :</label>
              <p></p>
            </div>
	           <div class="form-group col-md-6">
              <label for="inputNom">Mois :</label>
              <p></p>
            </div>
	           
           
           <div class="form-group col-md-6">
              <label for="inputNom">Annee :</label>
              <p></p>
            </div>
	           <div class="form-group col-md-6">
              <label for="inputNom">Nombre de conge restant :</label>
              <p></p>
                   </div> </br>
          <button type="button" class="btn btn-success">Valider</button>
           <button type="submit" class="btn btn-primary">Refuser</button>
        </div>
      </div> 
      </div>
    </div>
  </div>
    </body>
</html>
