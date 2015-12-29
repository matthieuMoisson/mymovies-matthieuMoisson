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
			//Je n'arrive pas a recuperer la valeur et le mettre dans mon select
			$valeur=(int)$_GET['id'];
			$reponse_film=$bdd->query("SELECT * FROM movie where movie.mov_id='$valeur' ");
			$donnees=$reponse_film->fetch();
		?>
		<div class="container">
			<div class="jumbotron">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<a href="#">
								<img class="image_film" src="<?php echo $donnees['mov_image'];?>" alt="Image flottante" /> 
							</a>
						</div>
						<div class="col-md-6">
						<h1>
							<?php echo $donnees['mov_title'];?>
						</h1>
						<h2>
							<?php echo $donnees['mov_director'];?>
						</h2>
						<p>
							<?php echo $donnees['mov_description_long']; ?>
						</p>
						<p><a class="btn btn-primary btn-lg" href="#" role="button"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Editer</a></p>
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