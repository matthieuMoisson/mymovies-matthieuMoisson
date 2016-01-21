
<?php 
	try{
		$bdd = new PDO('mysql:host=localhost;dbname=mymovies;charset=utf8','root','');
	}
	catch (Exception $e){
		 die('Erreur : ' .$e->getMessage());
	}
	
?>

	
	

<?php 
	/*
	$dbHost = getenv('OPENSHIFT_MYSQL_DB_HOST');
	$dbName = getenv('OPENSHIFT_GEAR_NAME');
	$dbUser = getenv('OPENSHIFT_MYSQL_DB_USERNAME');
	$dbPassword = getenv('OPENSHIFT_MYSQL_DB_PASSWORD');
	try{
		$bdd = new PDO('mysql:host='.$dbHost';dbname='.$dbName';charset=utf8',$dbUser,$dbPassword);
	}
	catch (Exception $e){
		die('Erreur : ' .$e->getMessage());
	}
	*/
?>