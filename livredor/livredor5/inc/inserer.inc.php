
<?php
include('connect.inc.php');

/* Vérification du data entree */


if(isset($_POST['ok'])) {
$requete = "INSERT INTO commentaire (pseudo,texte,date) VALUES ('" . ($_POST['pseudo']) . "','" . addslashes($_POST['texte']) . "',Now())";
$resultat = mysqli_query($con, $requete);


    if ($resultat) {
        echo "Ajout du commentaire réussi.";
    } else {
        echo "Le commentaire n'a pas pu être ajouté.";
    }
header('location:http://localhost/livredorv3/livredor5/livredor.php');
}
?>

<html>
<head> 
      <title>Livre D'or</title> 
	    </head>
  <body>
<form class="center" action="livredor.php" method="POST" enctype="multipart/form-data">
    <hr>
    <p style="text-align: center">Pseudo : <input type="text" name="pseudo"/></p>
    <p>Texte: <br><textarea resize="none" name="texte" rows="10" cols="50"></textarea></p>
    <input class="btn btn-primary" type="submit" name="ok" value="Envoyer">
</form>
<br>
</form>

</body>
</html>
