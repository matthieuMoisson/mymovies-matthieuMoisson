
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
		<?php include("entete.php"); ?>
		<h1 class="Titre_admin">
			Administration
		</h1>
	
	
		<div class="container">
		<div class="col-md-3"></div>
			<div class="col-md-6">
				<ul class="nav nav-tabs nav-justified">
					<li class="active"><a data-toggle="tab" href="#films">Films</a></li>
					<li><a data-toggle="tab" href="#Utilisateurs">Utilisateurs</a></li>
				</ul>
			</div>
		<div class="col-md-3"></div>
			<div class="tab-content">
				<div id="films" class="tab-pane fade in active">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Titre</th>
								<th>Réalisateur</th>
								<th>Année de sortie</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$reponse_film=$bdd->query('SELECT * FROM movie');
							while($donnees=$reponse_film->fetch()){
								?>
								<tr>
									<td><a href="film.php?id=<?php echo $donnees['mov_id']?>"><?php echo $donnees['mov_title'];?></a></td>
									<td><?php echo $donnees['mov_director']; ?></td>
									<td><?php echo $donnees['mov_year']; ?></td>
									<td>
										<button type="button" class="btn btn-xs btn-primary">
											<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
										</button>
										<a href="delete.php?id=<?php echo $donnees['mov_id']?>">
											<button type="button" class="btn btn-xs btn-danger">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
											</button>
										</a>
									</td>
								</tr>
								<?php
							}
							?>
							

							
						</tbody>
					</table>
				</div>
				<div id="Utilisateurs" class="tab-pane fade">
					<div id="films" class="tab-pane fade in active">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>Nom</th>
									<th>Prénom</th>
									<th>Login</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
							
							
								<tr>
									<td>Hallström</td>
									<td>Lasse</td>
									<td>xxxxx</td>
									<td>
										<button type="button" class="btn btn-xs btn-primary">
											<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
										</button>
										<button type="button" class="btn btn-xs btn-danger">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										</button>
									</td>
								</tr>
								
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<?php include("pied.php"); ?>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="lib/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>

