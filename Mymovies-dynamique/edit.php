<?php include("login.php"); ?>
<!doctype html>
<html>
    <head>
		
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<title>MyMovies</title>    
    </head>
    <body>
		<?php include("entete.php");?>
		
		<?php 
			//Il faut mettre a jour notre base de donnée
			include("verif_formulaire_new_film.php");
		?>
		<h1 class="Titre_admin">
			Ajout d'un film
		</h1>
		
		<div class="container">
			<div class="jumbotron">
				<div class="container">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-3">
							<form method="post" action="edit.php">
								<p> Titre : </p><br/>
								<p> Description courte : </p><br/><br/><br/><br/><br/><br/><br/><br/>
								<p> Description longue : </p><br/><br/><br/><br/><br/><br/><br/><br/>
								<p> Réalisateur : </p><br/>
								<p> Sortie aaaa-mm-jj : </p>
								<p> Image : </p><br/>
								
							</form>
						</div>
						<div class="col-md-7">
							<form method="post" action="edit.php" enctype="multipart/form-data">
								<textarea type="text" name="titre" cols="80" rows="1"/></textarea>
								<br/><br/>
								<textarea name="short_description" rows="8" cols="80"></textarea>
								<br/><br/>
								<textarea name="long_description" rows="8" cols="80"></textarea>
								<br/><br/>
								<textarea type="text" name="director" cols="80" rows="1"></textarea>
								<br/><br/>
								<textarea type="text" name="date" cols="80" rows="1"></textarea>
								<br/><br/>
								<input type="file" name="fichier_photo" /> <br/>
								<input type="submit" value="Enregistrer"/>
							</form>
						</div>
						<div class="col-md-1"></div>
						
					</div>
				</div>
			</div>
		</div>
		
		
		<br/> <br/>
		<br/> <br/>
		<?php include("pied.php"); ?>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>