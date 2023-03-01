<?php

$con = mysqli_connect("localhost", "root", "", "livredor"); 
 
/* Vérification de la connexion */ 
if (!$con) { 
   echo "Échec de la connexion : ".mysqli_connect_error(); 
   exit(); 
} 


?>