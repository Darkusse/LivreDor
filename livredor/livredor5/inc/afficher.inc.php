<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Livre D'or</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="utf-8">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<!-- Image and text -->
<nav class="navbar navbar-dark bg-dark">
    <h1 class="center white">Livre d'Or</h1>
</nav>

<?php
include('connect.inc.php');
$MaxPage = 5;
$SqlPage = $con->query('select id from commentaire');
$tPage = mysqli_num_rows($SqlPage);
$pagetotal = ($tPage / $MaxPage);
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

if (isset($_GET['page']) and !empty($_GET['page']) and $_GET['page'] > 0) {
    $_GET['page'] = intval($_GET['page']);
    $pagecour = $_GET['page'];
} else {
    $pagecour = 0;
}
$depart = ($pagecour) * $MaxPage;
?>


<?php
include("connect.inc.php");

$sql = ("SELECT * FROM `commentaire` Order by id DESC LIMIT $depart, $MaxPage ");
$res = mysqli_query($con, $sql);

while ($ligne = mysqli_fetch_assoc($res)) {
    ?>
    <?php
    echo '<br>
          <div class="center">
            <ul class="list-group">
             <li>
             <a class="list-group-item list-group-item-action text-uppercase active">&#128113; ' . $ligne['pseudo'] . '</a>
             </li>
             <li>
               <a class="list-group-item list-group-item-action">&#9993; ' . $ligne['texte'] . '</a>
             </li>
             <li>
                <a class="list-group-item list-group-item-action">&#128197; ' . $ligne['date'] . '</a>
             </li>
             <li>
           </ul>
         </div>
         <br>';
    ?>
    <?php
    '<br>';
}
?>
<div class="center">
    <ul class="pp d-flex">
        <?php if ($pagecour > 1): ?>
            <li class="Avant"><a href="livredor.php?page=<?php echo $page - 1 ?>">Avant&nbsp;</a></li>

        <?php endif; ?>

        <?php for ($i = 1; $i <= $pagecour; $i++) : ?>
            <li><a href="livredor.php?page=<?= $i; ?>"><?= $i; ?>&nbsp;</a></li>

        <?php endfor; ?>

        <?php if ($page < ($tPage / $MaxPage)): ?>
            <li class="Suivant"><a href="livredor.php?page=<?php echo $page + 1 ?>">Suivant&nbsp;</a></li>
        <?php endif; ?>

    </ul>
</div>

