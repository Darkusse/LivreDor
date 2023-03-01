
<?php 

 
/* Vérification du data entree */ 
$con = mysqli_connect("127.0.0.1", "root", "", "livredor");
if(isset($_POST['ok'])){
$requete = "INSERT INTO commentaire (pseudo,texte,date) VALUES ('".($_POST['pseudo'])."','".addslashes($_POST['texte'])."',Now())"; 
$resultat = mysqli_query($con,$requete);  

 
   if($resultat) {
   echo "<script>console.log('pommet')</script>";
} 
else { 
   echo "Le commentaire n'a pas pu être ajouté."; 
}
}
?> 
<?php 
							$con = mysqli_connect("127.0.0.1", "root", "", "livredor");
							$MaxPage = 5;
							$SqlPage= $con ->query('select id from commentaire');
							$tPage=mysqli_num_rows($SqlPage) ;
							$pagetotal= ceil($tPage/$MaxPage);
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;
							
							if (isset($_GET['page']) and !empty($_GET['page']) and $_GET['page'] >0 ){
								$_GET['page'] = intval($_GET['page']);
								$pagecour = $_GET['page'];							
							}else {
								$pagecour = 1 ;
							}
							$depart = ($pagecour-1)*$MaxPage ;
							?>
<?php
							$sql=("SELECT * FROM `commentaire` Order by id DESC LIMIT $depart, $MaxPage ");
							$res =mysqli_query($con,$sql);

							while ($ligne = mysqli_fetch_assoc($res))  {
							?>
							<?php	
								echo '<div class="col-md-6 blog-grid-top">
								<ul class="a">
								<li>
								<a>
								<i class="far fa-clock"></i>'.$ligne['texte'].'</a>
								</li>
								<a>
								<i class="far fa-clock"></i>'.$ligne['date'].'</a>
								</li>
								<li class="mx-2">
								<a >
								<i class="far fa-user"></i> '.$ligne['pseudo'].'</a>
								</li></ul></div>';  
								?>
								<?php
								'<br />';
									}
									?>		
	<div id="pp">
									<ul class="pp">
									<?php if ($pagetotal > 1): ?>
									<li class="Avant"><a href="livredor.php?page=<?php echo $pagetotal-1 ?>">Avant</a></li>
									<?php endif; ?>
									
										<?php for($i = 1; $i<= $pagetotal; $i++) : ?>
										<li><a href="livredor.php?page=<?= $i; ?>"><?= $i; ?></a></li>
										<?php endfor; ?>
										
									<?php if ($page <($tPage / $MaxPage)): ?>	
									<li class="Suivant"><a href="livredor.php?page=<?php echo $page+1 ?>">Suivant</a></li>
									<?php endif; ?>
										  </ul>
										</div>									
<html>
<head> 
      <title>Livre D'or</title> 
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	  <meta charset="utf-8">
  </head>
  <body>
    <form action="" method="POST" enctype="multipart/form-data"> 
      <p>Pseudo :  <input type="text" name="pseudo" /></p> 
      <p>texte: <br /><textarea name="texte" rows="10" cols="50"></textarea></p> 
      
      <br /><br /> 
      <input type="submit" name="ok" value="Envoyer"> 
   </form> 
   <br /> 
</form>
</body>  
</html>  