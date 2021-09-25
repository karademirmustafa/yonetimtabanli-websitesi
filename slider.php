
			<div role="main" class="main">
				<div class="slider-container rev_slider_wrapper" style="height: 650px;">
					<div id="revolutionSlider" class="slider rev_slider manual">
					



						<ul>
							

							 <?php
                           $slidersor=$db->prepare("select * from slider order by slider_id DESC limit 25");
                           $slidersor->execute();


                          while ($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC)) { ?>
                            

                          	


							<li data-transition="fade" data-title="<?php echo $ayarcek['ayar_author']; ?>" data-thumb="<?php echo $slidercek['slider_resimyol'];?>">

								<img src="<?php echo $slidercek['slider_resimyol'];?>"  
									alt="<?php echo $slidercek['slider_ad']; ?>"
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat"
									class="rev-slidebg">

									
										<div class="tp-caption main-label"
									data-x="right" data-hoffset="40"
									data-y="center" data-voffset="-250"
									data-start="300"
									style="z-index: 5; font-size: 50px;"
									data-transform_in="y:[-300%];opacity:0;s:500;">Kayıtlarımız Başlamıştır.</div>
									
								
									<div class="tp-caption main-label"
									data-x="left" data-hoffset="100"
									data-y="center" data-voffset="-205"
									data-start="1000"
									style="z-index: 5; font-size: 40px;"
									data-transform_in="y:[-300%];opacity:0;s:500;">AGD GÜVENCESİ İLE</div>

								<div class="tp-caption tp-caption-overlay-opacity bottom-label"
									data-x="left" data-hoffset="100"
									data-y="center" data-voffset="-145"
									data-start="1500"
									data-transform_in="x:[-100%];opacity:0;s:500;"><i class="fa fa-check"></i> <b>Helal ve Temiz Kesim</b></div>

								<div class="tp-caption tp-caption-overlay-opacity bottom-label"
									data-x="left" data-hoffset="100"
									data-y="center" data-voffset="-100"
									data-start="1800"
									data-transform_in="x:[-100%];opacity:0;s:500;"><i class="fa fa-check"></i> <b>Kesilir,Hisselenir</b></div>

								<div class="tp-caption tp-caption-overlay-opacity bottom-label"
									data-x="left" data-hoffset="100"
									data-y="center" data-voffset="-55"
									data-start="2100"
									data-transform_in="x:[-100%];opacity:0;s:500;"><i class="fa fa-check"></i><b> Kapınıza Teslim Edilir</b></div>

								<div class="tp-caption tp-caption-overlay-opacity bottom-label"
									data-x="left" data-hoffset="100"
									data-y="center" data-voffset="-10"
									data-start="2400"
									data-transform_in="x:[-100%];opacity:0;s:500;"><i class="fa fa-check"></i><b> Hissedarlarınızı Bilirsiniz.</b></div>

								<div class="tp-caption tp-caption-overlay-opacity bottom-label"
									data-x="left" data-hoffset="100"
									data-y="center" data-voffset="35"
									data-start="2700"
									data-transform_in="x:[-100%];opacity:0;s:500;"><i class="fa fa-check"></i><b>Süreçleri Takip Edebilirsiniz!</b></div>

								<div class="tp-caption tp-caption-overlay-opacity bottom-label"
									data-x="left" data-hoffset="100"
									data-y="center" data-voffset="80"
									data-start="3000"
									data-transform_in="x:[-100%];opacity:0;s:500;"><i class="fa fa-check"></i><b>Bağışınız Yerine Ulaşır</b></div>

								
                                <a class="tp-caption tp-caption-overlay-opacity bottom-label"
									data-hash
									data-hash-offset="85"
									href="basvuru.php"
									data-x="right" data-hoffset="150"
									data-y="center" data-voffset="-105"
									data-start="300"
									data-whitespace="nowrap"						 
									data-transform_in="y:[100%];s:500;"
									data-transform_out="opacity:0;s:500;"
									style="z-index: 5"
									data-mask_in="x:0px;y:0px;"><input align="bottom" type="button"  class="btn btn-primary text-center"  value="Başvuru Yap!"> </a>



								
							</li>

							<?php } ?>
							
						</ul>
					</div>
				</div>













