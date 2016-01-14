<?php include("fonction.php"); ?>
<?php include("login.php"); ?>
<?php 
	//Teste si le fichier bien envoyer au bon format sans erreur
	if(isset($_FILES['fichier_photo']) AND $_FILES['fichier_photo']['error']==0){
		move_uploaded_file($_FILES['fichier_photo']['tmp_name'],'images/'.basename($_FILES['fichier_photo']['name']));
	}
	//On va egaement mettre a jour notre table
	$title=nettoyer($_POST["titre"]);
	$s_desc=nettoyer($_POST["short_description"]);
	$l_desc=nettoyer($_POST["long_description"]);
	$dir=nettoyer($_POST["director"]);
	$date=nettoyer($_POST["date"]);
	$lien="images/".basename($_FILES["fichier_photo"]["name"]);
	$bdd->exec("INSERT INTO movie(mov_title,mov_description_short,mov_description_long,mov_director,mov_year,mov_image) values('$title', '$s_desc','$l_desc','$dir','$date','$lien' )");
	header("Location: index.php");
	
?>