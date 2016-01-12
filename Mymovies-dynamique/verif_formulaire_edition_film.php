<?php include("fonction.php"); ?>
<?php include("login.php"); ?>
<?php 
	$id = $_GET['id'];
	echo $id;
	//Teste si le fichier bien envoyer au bon format sans erreur
	if(isset($_FILES['fichier_photo']) AND $_FILES['fichier_photo']['error']==0){
		move_uploaded_file($_FILES['fichier_photo']['tmp_name'],'images/'.basename($_FILES['fichier_photo']['name']));
	}
	//On va egalement mettre a jour notre table
	$title=nettoyer($_POST["titre"]);
	$s_desc=nettoyer($_POST["short_description"]);
	$l_desc=nettoyer($_POST["long_description"]);
	$dir=nettoyer($_POST["director"]);
	$date=nettoyer($_POST["date"]);
	$lien="images/".basename($_FILES["fichier_photo"]["name"]);
	$bdd->exec("UPDATE movie SET mov_title='$title', mov_year='$date', mov_description_long='$l_desc', mov_description_short='$s_desc', mov_director='$dir',mov_image='$lien' where mov_id='$id'");
	header("Location: index.php");
	//On pourrait réaliser plus de vérification pour éviter des probleme
?>