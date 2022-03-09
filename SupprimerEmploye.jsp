<%-- 
    Document   : SupprimerEmploye
    Created on : 9 mars 2022, 21:55:17
    Author     : Mendrikaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
		.gradient-custom {
                 /* fallback for old browsers */
                background: #6a11cb;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))}
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
                    <h1> SUPPRESION EMPLOYE<h1>
		</div>
	</div>
       <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
 
            <div class="form-group col-md-6">
              <label for="inputNom">Nom:</label>
              <p></p>
            </div>
            <div class="form-group col-md-6">
              <label for="inputNom">Prenom:</label>
              <p></p>
            </div>
          
           <div class="form-group col-md-6">
              <label for="inputNom">Date de naissance:</label>
              <p></p>
            </div>
	           <div class="form-group col-md-6">
              <label for="inputNom">Sexe:</label>
              <p></p>
            </div>
	           
           
           <div class="form-group col-md-6">
              <label for="inputNom">Adresse:</label>
              <p></p>
            </div>
	           <div class="form-group col-md-6">
              <label for="inputNom">Poste:</label>
              <p></p>
            </div> 
           <div class="form-group col-md-6">
              <label for="inputNom">Date d'embauche:</label>
              <p></p>
            </div>
	           <div class="form-group col-md-6">
              <label for="inputNom">Contrat:</label>
              <p></p>
            </div>
            <div class="form-group col-md-6">
              <label for="inputNom">Date fin Contrat:</label>
              <p></p>
            </div>
          <button type="submit" class="btn btn-primary">Supprimer</button>
        </div>
      </div> 
      </div>
    </div>
  </div>
    </body>
</html>
