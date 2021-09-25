<?php include 'header.php' ?>

			<div role="main" class="main">
				<div class="container">
					<div class="row pt-xl">
						<div class="col-md-7">
							<h1 class="mt-xl mb-none">Bize Ulaşın</h1>
							<div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>
							<p class="lead mb-xl mt-lg">Bize ulaşmak için aşağıdaki formu doldurunuz.</p>

							<div class="alert alert-success hidden mt-lg" id="contactSuccess">
								<strong>Başarılı!</strong> Mesajınız gönderildi.
							</div>

							<div class="alert alert-danger hidden mt-lg" id="contactError">
								<strong>Başarısız!</strong> Mesajınız gönderilemedi.
								<span class="font-size-xs mt-sm display-block" id="mailErrorMessage"></span>
							</div>

							<form id="contactForm" action="panel/netting/iletisimislem.php" method="POST">
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<input type="text" placeholder="Adınızı ve Soy	adınızı Giriniz." value="" data-msg-required="Adınızı ve Soyadınızı Giriniz" maxlength="100" class="form-control input-lg" name="iletisim_adsoyad" id="name" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<input type="text" placeholder="Konuyu Giriniz." value="" data-msg-required="Konuyu Giriniz" maxlength="100" class="form-control input-lg" name="iletisim_konu" id="name" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<input type="email" placeholder="Mail Adresinizi Giriniz." value="" data-msg-required="" data-msg-email="Please enter a valid email address." maxlength="100" class="form-control input-lg" name="iletisim_mail" id="email" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<input type="text" placeholder="Telefonunuzu Giriniz." value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control input-lg" name="iletisim_telefon" id="subject" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<div class="col-md-12">
											<textarea maxlength="5000" placeholder="Mesajınızı Yazınız." data-msg-required="Please enter your message." rows="5" class="form-control input-lg" name="iletisim_mesaj" id="message" required></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<input type="submit" name="iletisimkaydet" value="Gönder" class="btn btn-primary btn-lg mb-xlg" data-loading-text="Yükleniyor...">
									</div>
								</div>
							</form>

						</div>
						<div class="col-md-4 col-md-offset-1">

							<h4 class="mt-xl mb-none">Adres İletişim</h4>
							<div class="divider divider-primary divider-small mb-xl">
								<hr>
							</div>

							<ul class="list list-icons list-icons-style-3 mt-xlg mb-xlg">
								<li><i class="fa fa-map-marker"></i> <strong>Adres : </strong> <?php echo $ayarcek['ayar_adres']; ?><br><?php echo $ayarcek['ayar_ilce']; ?>/<?php echo $ayarcek['ayar_il']; ?></li>
								<li><i class="fa fa-phone"></i> <strong>Telefon</strong> <?php echo $ayarcek['ayar_tel']; ?></li>
								<li><i class="fa fa-envelope"></i> <strong>Email:</strong> <a href="mailto:<?php echo $ayarcek['ayar_mail']; ?>"><?php echo $ayarcek['ayar_mail']; ?></a></li>
							</ul>

							<h4 class="pt-xl mb-none">Kolay Hisse</h4>
							
                    
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

				<!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
				<div id="googlemaps" class="google-map google-map-footer"></div>
			</div>

			
			<?php include 'footer.php' ?>