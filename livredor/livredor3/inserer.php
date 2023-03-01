<html>
<head> 
      <title>Livre D'or</title> 
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	  <meta charset="utf-8">
  </head>
  <body>
    <form action="inserer.php" method="POST" enctype="multipart/form-data"> 
      <p>Pseudo :  <input type="text" name="pseudo" /></p> 
      <p>Texte: <br /><textarea name="texte" rows="10" cols="50"></textarea></p> 
      
      <br /><br /> 
      <input type="submit" name="ok" value="Envoyer"> 
   </form> 
   <br /> 
</form>

<?php 
$connect = mysqli_connect("localhost", "root", "", "livredor"); 
 
/* Vérification de la connexion */ 
if (!$connect) { 
   echo "Échec de la connexion : ".mysqli_connect_error(); 
   exit(); 
} 

if(isset($_POST['ok'])){
$requete = "INSERT INTO commentaire (pseudo,texte,date) VALUES ('".($_POST['pseudo'])."','".addslashes($_POST['texte'])."',Now())"; 
$resultat = mysqli_query($connect,$requete);  

 
   if($resultat) {
   echo "Ajout du commentaire réussi."; 
} 
else { 
   echo "Le commentaire n'a pas pu être ajouté."; 
}
}
?> 

</body>  
</html>  