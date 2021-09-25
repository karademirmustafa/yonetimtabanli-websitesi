<?php include 'header.php';

$organizasyonsor=$db->prepare("select * from organizasyon where organizasyon_id=?");
$organizasyonsor->execute(array(0));
$organizasyoncek=$organizasyonsor->fetch(PDO::FETCH_ASSOC);




 ?>

			<div role="main" class="main">
				<div class="container">
					<div class="row pt-xl">
						<div class="col-md-7">
							<h1 class="mt-xl mb-none"><?php echo $organizasyoncek['organizasyon_baslik']; ?></h1>
							<div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>
							<p><?php echo $organizasyoncek['organizasyon_icerik']; ?></p>

						</div>
						<div class="col-md-4 col-md-offset-1">

							<h4 class="mt-xl mb-none">Video Tanıtım</h4>
							<div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>

							<div class="embed-responsive embed-responsive-16by9 mb-xl">
								<iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo $organizasyoncek['organizasyon_video']; ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
							</div>

							<h4 class="mt-xlg">Vizyonumuz</h4>

							<div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>

							<blockquote class="blockquote-secondary">
								<p class="font-size-lg"><?php echo $organizasyoncek['organizasyon_metin']; ?></p>
								<footer>Visyonumuz</footer>
							</blockquote>

							<h4 class="mt-xlg">Misyonumuz</h4>

							<div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>
							<blockquote class="blockquote-secondary">
								<p class="font-size-lg"><?php echo $organizasyoncek['organizasyon_metin2']; ?></p>
								<footer>Misyonumuz</footer>
							</blockquote>


							 <div class="offset-top-50">
                  <div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>
                      <ul class="list-marked-bordered offset-top-15">
                        <li><h4><a href="index.php"><strong>Anasayfa</strong></a></h4></li>
                        <li><h4><a href="hakkimizda.php"><strong>Hakkımızda</strong></a></h4></li>
                        <li><h4><a href="organizasyonumuz.php"><strong>Organizasyonumuz</strong></a></h4></li>
                        <li><h4><a href="sikcasorulanlar.php"><strong>S.S.S.</strong></a></h4></li>
                        <li><h4><a href="basvuru.php"><strong>Başvuru</strong></a></h4></li>
                        
                      </ul>
                    </div>

						</div>
					</div>
				</div>
			</div>

			<?php include 'footer.php'; ?>