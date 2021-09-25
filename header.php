<?php include 'panel/netting/baglan.php'; ?>


<?php  
$ayarsor=$db->prepare("select * from ayar where ayar_id=?");
$ayarsor->execute(array(0));
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);


include 'panel/fonksiyon.php;'





?>



<!DOCTYPE html>
<html>
	<head><meta charset="euc-jp">

		<!-- Basic -->
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title><?php echo $ayarcek['ayar_title']; ?></title>	

		<meta name="keywords" content="<?php echo $ayarcek['ayar_keywords']; ?>" />
		<meta name="description" content="<?php echo $ayarcek['ayar_description']; ?>">
		<meta name="author" content="<?php echo $ayarcek['ayar_author']; ?>">

		<!-- Favicon -->
		<link rel="shortcut icon" href="agdlog.png" type="image/x-icon" />
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css">
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css">
		<link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css">
		<link rel="stylesheet" href="css/theme-elements.css">
		<link rel="stylesheet" href="css/theme-blog.css">
		<link rel="stylesheet" href="css/theme-shop.css">
		<link rel="stylesheet" href="css/theme-animate.css">

		<!-- Current Page CSS -->
		<link rel="stylesheet" href="vendor/rs-plugin/css/settings.css">
		<link rel="stylesheet" href="vendor/rs-plugin/css/layers.css">
		<link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css">

		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skins/skin-law-firm.css"> 

		<!-- Demo CSS -->
		<link rel="stylesheet" href="css/demos/demo-law-firm.css">

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="css/custom.css">

		<!-- Head Libs -->
		<script src="vendor/modernizr/modernizr.min.js"></script>

	</head>
	<body>

		<div class="body">
			<header id="header" class="header-no-border-bottom" data-plugin-options='{"stickyEnabled": true, "stickyEnableOnBoxed": true, "stickyEnableOnMobile": true, "stickyStartAt": 115, "stickySetTop": "-115px", "stickyChangeLogo": false}'>
				<div class="header-body">
					<div class="header-container container">
						<div class="header-row">
							<div class="header-column">
								<div class="header-logo">
									<a href="index.php">
										<img alt="<?php echo $ayarcek['ayar_title']; ?> logosu" width="300" height="120" data-sticky-width="82" data-sticky-height="50" data-sticky-top="33" src="<?php echo $ayarcek['ayar_logo']; ?>">
								</div>
							</div>
							<div class="header-column">
								<ul class="header-extra-info">
									<li>
										<div class="feature-box feature-box-call feature-box-style-2">
											<div class="feature-box-icon">
												<i class="icon-call-end icons"></i>
											</div>
											<div  class="feature-box-info"><a href="<?php trim($ayarcek['ayar_tel']); ?>"
												<b></b><h3 class="mb-none"><?php echo trim($ayarcek['ayar_tel']); ?></h3></a></b>
											</div>
											<div class="feature-box feature-box-call feature-box-style-2">
											<div class="feature-box-icon">
												<i class="fa fa-whatsapp"></i>
											</div>
											<div  class="feature-box-info"><a href="<?php trim($ayarcek['ayar_gsm']); ?>"
												<b></b><h3 class="mb-none"><?php echo trim($ayarcek['ayar_gsm']); ?></h3></a></b>
											</div>
											
										</div>
											
										</div>
									</li>
									<li class="hidden-xs">
										<div class="feature-box feature-box-mail feature-box-style-2">
											<div class="feature-box-icon">
												<i class="icon-envelope icons"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="mb-none"><a href="mailto:<?php echo $ayarcek['ayar_mail']; ?>"><b><?php echo $ayarcek['ayar_mail']; ?></b></a></h4>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="header-container header-nav header-nav-bar header-nav-bar-primary">
						<div class="container">
							<button class="btn header-btn-collapse-nav" data-toggle="collapse" data-target=".header-nav-main">
								Menüler <i class="fa fa-bars"></i>
							</button>
							


							<!-- class="active" -->
							<div  class="header-nav-main header-nav-main-light header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
								<nav>
									<ul class="nav nav-pills" id="mainNav">


										<?php 




										$menusor=$db->prepare("SELECT * FROM menu   ORDER BY menu_sira ASC limit 25");
                  						$menusor->execute();

                  						while ($menucek=$menusor->fetch(PDO::FETCH_ASSOC)) { ?>

										
										<li >
											<a href="<?php 

											if(strlen($menucek['menu_url'])>0){

												echo $menucek['menu_url'];
											}elseif(strlen($menucek['menu_url'])==0){ ?>


											<?php }


											 ?>">
												<?php echo $menucek['menu_ad'];?>
											</a>
										</li>

										
										

										<?php } ?>
										
										
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</header>