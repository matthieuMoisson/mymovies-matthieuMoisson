<?php include("login.php"); ?>
<div class="navbar navbar-default" role="navigation">
			<div class="container">
				<!-- Partie de la barre toujours affichée -->
				<div class="navbar-header">
					<!-- Bouton d'accès affiché à droite si la zone d'affichage est trop petite -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-target">
						<span class="sr-only">Activer la navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index2.php">
						<span class="glyphicon glyphicon-film"></span>
						MyMovies
					</a>
				</div>				
				<!-- Partie de la barre masquée si la surface d'affichage est insuffisante -->
				<div class="collapse navbar-collapse" id="navbar-collapse-target">
					<ul class="nav navbar-nav">
						<li><a href="edit.php">Ajouter un film</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="administration.php">
								<span class="glyphicon glyphicon-cog"></span>
								Administration
							</a>
						</li>
						<li class="dropdown">
						  <a href="#" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							<span class="glyphicon glyphicon-user"></span>
							Bienvenue, Matthieu
							<span class="caret"></span>
						  </a>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Profil</a></li>
							<li><a href="#">Quiter</a></li>
						  </ul>
						</li>
						
					</ul>
				</div>
			</div>
		</div>