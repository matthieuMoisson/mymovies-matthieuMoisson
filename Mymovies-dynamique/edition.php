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
		<?php 
			include("entete.php");
			$id=(int)$_GET['id'];
			$reponse_film=$bdd->query("SELECT * FROM movie where movie.mov_id='$id' ");
			$donnees=$reponse_film->fetch();
		?>
		<h1 class="Titre_admin">
			Edition d'un film
		</h1>
		
		<div class="container">
			<div class="jumbotron">
				<div class="container">        
					<form method="post" action="verif_formulaire_edition_film.php?id=<?php echo $id?>" enctype="multipart/form-data" class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2">Titre :</label>
							<div class="col-sm-10">
								<textarea type="text" name="titre" cols="80" rows="1"/><?php echo $donnees['mov_title'];?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2">Description courte :</label>
							<div class="col-sm-10">
								<textarea name="short_description" rows="8" cols="80"><?php echo $donnees['mov_description_short'];?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2">Description longue :</label>
							<div class="col-sm-10">
								<textarea name="long_description" rows="8" cols="80"><?php echo $donnees['mov_description_long'];?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label class= "col-sm-2">Réalisateur :</label>
							<div class="col-sm-10">
								
								<textarea type="text" name="director" cols="80" rows="1"><?php echo $donnees['mov_director'];?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2">Date :</label>
							<div class="col-sm-10">
								<textarea type="text" name="date" cols="80" rows="1"><?php echo $donnees['mov_year'];?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2"></label>
							<div class="col-sm-10">
								<input type="file" name="fichier_photo" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2"></label>
							<div class="col-sm-10">
								<input type="submit" value="Enregistrer"/>
							</div>
						</div>
						
						
					</form>
				</div>
			</div>
		</div>
		
		
		<?php include("pied.php"); ?>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>