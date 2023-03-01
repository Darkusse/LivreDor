
<?php 

	include ("connect.inc.php" );
    
	if (isset($_GET['id'])) {
		
	$query="delete from commentaire where id='" .$_GET['id']."'";
	$resultat = mysqli_query($con,$query); 
	
	if($resultat){
		echo "<p style='text-align:center;'> Commentaire supprime id='" .$_GET['id']."'</p>";
		
	}
		else {
		echo "erreur ";
		}	
	}
	
	 ?>
