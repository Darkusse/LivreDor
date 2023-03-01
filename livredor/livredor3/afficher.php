

<body>
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
									<li class="Avant"><a href="afficher.php?page=<?php echo $pagetotal-1 ?>">Avant</a></li>
									<?php endif; ?>
									
										<?php for($i = 1; $i<= $pagetotal; $i++) : ?>
										<li><a href="afficher.php?page=<?= $i; ?>"><?= $i; ?></a></li>
										<?php endfor; ?>
										
									<?php if ($page <($tPage / $MaxPage)): ?>	
									<li class="Suivant"><a href="afficher.php?page=<?php echo $page+1 ?>">Suivant</a></li>
									<?php endif; ?>
										  </ul>
										</div>									

 </body>