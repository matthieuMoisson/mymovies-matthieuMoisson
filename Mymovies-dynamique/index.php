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
		$reponse_film=$bdd->query('SELECT * FROM movie');
		while($donnees=$reponse_film->fetch()){
			?>
			<div class="container">
				<h1 title="Vers résumé"> <a href="film.php?id=<?php echo $donnees['mov_id']?>"><?php echo $donnees['mov_title'];?></a></h1>
				<p class="resume_film">
					<?php 
						//Afficher le resume associer
						echo $donnees['mov_description_short'];
					?>
				</p>
			</div>
			<?php
		}
		//$reponse->closeCursor();
		?>
		
		
		<br/> <br/>
		<br/> <br/>
		<?php include("pied.php"); ?>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>