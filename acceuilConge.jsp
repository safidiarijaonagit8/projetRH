<%-- 
    Document   : loginAdmin
    Created on : 9 mars 2022, 00:28:56
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
                background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}
	</style>
<head>
	<meta charset="UTF-8">
	<title>Ressources Humaines</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
</head>
    <body>
	<div id="header">
		<div class="clearfix">
                    <h1> ACCEUIL CONGE<h1>
		</div>
	</div>
         <form action="insertionEmploye.jsp" method="POST">
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div>
              <div class="form-outline form-white mb-4">
                  <a href="loginEmp.jsp"><button type="button" class="btn btn-secondary">Demande Conge</button></a>
              </div>

              <div class="form-outline form-white mb-4">
                  <a href="loginAdmin2.jsp"><button type="button" class="btn btn-secondary">Valider Conge</button>
              </div>
                
                 <div class="form-outline form-white mb-4">
                     <a href="loginAdmin3.jsp"><button type="button" class="btn btn-secondary">Voir Solde conge</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </body>
</html>
