<?php 
$connect = mysqli_connect("localhost", "root", "", "livredor"); 
 
/* Vérification de la connexion */ 
if (!$connect) { 
   echo "Échec de la connexion : ".mysqli_connect_error(); 
   exit(); 
} 
$requete = "INSERT INTO commentaire (pseudo,texte,date) VALUES ('".($_POST['pseudo'])."','".addslashes($_POST['texte'])."',Now())"; 
$resultat = mysqli_query($connect,$requete);  

 
   if($resultat) {
   echo "Ajout du commentaire réussi."; 
} 
else { 
   echo "Le commentaire n'a pas pu être ajouté."; 
}
?> 