<?php 
	try{
		$bdd = new PDO('mysql:host=localhost;dbname=mymovies;charset=utf8','root','');
	}
	catch (Exception $e){
		die('Erreur : ' .$e->getMessage());
	}
	
?>
<?php
	$id=$_GET['id'];
	$bdd->query("DELETE FROM movie WHERE mov_id='$id'");
	
?>
<?php 
header("Location: administration.php");
?>