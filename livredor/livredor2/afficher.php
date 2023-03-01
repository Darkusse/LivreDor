<?php 
   $connect = mysqli_connect("127.0.0.1", "root", "", "livredor"); 
 
   /* Vérification de la connexion */ 
   if (!$connect) { 
      echo "Échec de la connexion : ".mysqli_connect_error(); 
      exit(); 
   } 
 
   $requete = "SELECT * FROM commentaire "; 
   if ($resultat = mysqli_query($connect,$requete)) { 
       
      /* fetch le tableau associatif */ 
      while ($ligne = mysqli_fetch_assoc($resultat)) { 
         
         echo "<h3>".$ligne['pseudo']."</h3>"; 
		echo "<div style='width:400px'>".$ligne['texte']." </div>"; 
          } 
   }
?> 