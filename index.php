	
<?php include 'header.php'; 
	include 'slider.php';

	define('guvenlik', true);
	
	$hakkimizdasor=$db->prepare("select * from hakkimizda where hakkimizda_id=?");
$hakkimizdasor->execute(array(0));
$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);		?>




			

				<div class="container" id="practice-areas">
					<div class="row">
						<div class="col-md-12 center">
							<h2 class="mt-xl mb-none"></h2>
							<div class="divider divider-primary divider-small divider-small-center mb-xl">
								<hr>
							</div>
						</div>
					</div>

					<div class="row mt-lg">
						<div class="col-md-4">
							<div class="feature-box feature-box-style-2 mb-xl appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="0">
								<div class="box-header">
                          		<h4 class="text-center"><b>	AGD Güvencesi</b></a></h4>
								<div class="feature-box-icon">
									
									<img style="margin-left: 10px;" src="panel/images/agdguvence.png" alt="" />
								</div>
								
								

								<div class="feature-box-info ml-md">
									
									<p class="text-center
									"><b>AGD'nin 15 yıllık </b></p>

									<p class="text-center
									"><b> Tecrübesi ve Güvencesiyle....</b></p>									</div>
								</div>
							</div>
						</div>


						<div class="col-md-4">
							<div class="feature-box feature-box-style-2 mb-xl appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="0">
								<div class="box-header">
                          		<h4 class="text-center"><b>Helal ve Temiz Kesim</b></a></h4>
								<div class="feature-box-icon">
									
									<img src="panel/images/helalkesim.png" alt="" />
								</div>
								
								

								<div class="feature-box-info ml-md">
									
									<p class="text-center"><b>	Helal ve Temiz Kesim. </b></p>
									<p class="text-center"><b>	 Gözünüz Arkada Kalmaz!</b></p>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-4">
							<div class="feature-box feature-box-style-2 mb-xl appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="0">
								<div class="box-header">
                          		<h4 class="text-center"><b>	Kesilir, Hisselenir, Kapınıza Teslim Edilir</b></a></h4>
								<div class="feature-box-icon">
									
									<img src="panel/images/inek.png" alt="" />
								</div>
								
								

								<div class="feature-box-info ml-md">
									
									<p class="text-center"><b>Kesilir, Hisselenir</b></p>
									<p class="text-center"><b> Kapınıza Teslim Edilir</b></p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="feature-box feature-box-style-2 mb-xl appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="0">
								<div class="box-header">
                          		<h4 class="text-center"><b>		Hissedarlarınızı Bilirsiniz.</b></a></h4>
								<div class="feature-box-icon">
									
									<img src="panel/images/hissedar.png" alt="" />
								</div>
								
								

								<div class="feature-box-info ml-md">
									<p class="text-center"><b>Diğer Hissedarlarınız</b></p>
									<p class="text-center"><b> Kim Bilirsiniz.</b></p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="feature-box feature-box-style-2 mb-xl appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="0">
								<div class="box-header">
                          		<h4 class="text-center"><b>	Süreçleri Takip Edersiniz!
</b></a></h4>
								<div class="feature-box-icon">
									
									<img src="panel/images/surec.png" alt="" />
								</div>
								
								

								<div class="feature-box-info ml-md">
										<p class="text-center"><b>Tüm Süreçleri</b></p>
									<p class="text-center"><b>Takip Edersiniz!</b></p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="feature-box feature-box-style-2 mb-xl appear-animation" data-appear-animation="fadeInUp" data-appear-animation-delay="0">
								<div class="box-header">
                          		<h4 class="text-center"><b>	Bağışınız Yerine Ulaşır
</b></a></h4>
								<div class="feature-box-icon">
									
									<img src="panel/images/bagis.png" alt="" />
								</div>
								
								

								<div class="feature-box-info ml-md">
										<p class="text-center"><b>Bağışınızın</b></p>
									<p class="text-center"><b>Yerine Ulaştığını</b></p>
									<p class="text-center"><b>Bilirsiniz!</b></p>	
									</div>
								</div>
							</div>
						</div>


						
				

				
				</div>

				
							</section>
						</div>
						
					</div>
<!--
					<div class="container">
						<div class="row">
							<div class="col-md-12 center">
								<h2 class="mt-xl mb-none">Eski Döneme Ait Fotoğraflarımız</h2>
								<div class="divider divider-primary divider-small divider-small-center mb-xl">
									<hr>
								</div>
							</div>
						</div>
						<div class="row mt-lg">
							<div class="owl-carousel owl-theme owl-team-custom show-nav-title" data-plugin-options='{"items": 4, "margin": 10, "loop": false, "nav": true, "dots": false}'>
								<div class="center mb-lg">
									<a href="demo-law-firm-attorneys-detail.html">
										<img src="img/team/team-22.jpg" class="img-responsive" alt="">
									</a>
									<h4 class="mt-md mb-none">David Doe</h4>
									<p class="mb-none">Criminal Law</p>
									<span class="thumb-info-social-icons mt-sm pb-none">
										
									</p>
								</div>
								<div class="center mb-lg">
									<a href="demo-law-firm-attorneys-detail.html">
										<img src="img/team/team-23.jpg" class="img-responsive" alt="">
									</a>
									<h4 class="mt-md mb-none">Jeff Doe</h4>
									<p class="mb-none">Business Law</p>
									<span class="thumb-info-social-icons mt-sm pb-none">
										
									</p>
								</div>
								<div class="center mb-lg">
									<a href="demo-law-firm-attorneys-detail.html">
										<img src="img/team/team-24.jpg" class="img-responsive" alt="">
									</a>
									<h4 class="mt-md mb-none">Craig Doe</h4>
									<p class="mb-none">Divorce Law</p>
									<span class="thumb-info-social-icons mt-sm pb-none">
										
									</p>
								</div>
								<div class="center mb-lg">
									<a href="demo-law-firm-attorneys-detail.html">
										<img src="img/team/team-25.jpg" class="img-responsive" alt="">
									</a>
									<h4 class="mt-md mb-none">Richard Doe</h4>
									<p class="mb-none">Accident Law</p>
									<span class="thumb-info-social-icons mt-sm pb-none">
										
									</p>
								</div>
								<div class="center mb-lg">
									<a href="demo-law-firm-attorneys-detail.html">
										<img src="img/team/team-29.jpg" class="img-responsive" alt="">
									</a>
									<h4 class="mt-md mb-none">Amanda Doe</h4>
									<p class="mb-none">Health Law</p>
									<span class="thumb-info-social-icons mt-sm pb-none">
										
									</p>
								</div>
								<div class="center mb-lg">
									<a href="demo-law-firm-attorneys-detail.html">
										<img src="img/team/team-30.jpg" class="img-responsive" alt="">
									</a>
									<h4 class="mt-md mb-none">Jessica Doe</h4>
									<p class="mb-none">Capital Law</p>
									<span class="thumb-info-social-icons mt-sm pb-none">
										
									</p>
								</div>
							</div>
						</div>
					</div> -->

				</div>

				
	

			</div>




<?php include 'footer.php' ?>