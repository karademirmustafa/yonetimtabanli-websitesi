<?php ob_start();
include 'baglan.php'; 

// Slider ayarları
if (isset($_POST['menukaydet'])) {



	
$kaydet=$db->prepare("INSERT INTO menu  SET
	menu_ust=:ust,
	menu_ad=:ad,
	menu_url=:url,
	menu_detay=:detay,
	menu_sira=:sira,
	menu_durum=:durum"
);

$insert=$kaydet->execute(array(
	'ust'=>$_POST['menu_ust'],
	'ad'=>$_POST['menu_ad'],
	'url'=>$_POST['menu_url'],
	'detay'=>$_POST['menu_detay'],
	'sira'=>$_POST['menu_sira'],
	'durum'=>$_POST['menu_durum']
	
));

}

if($insert){

	Header("Location:../../basvuru.php?durum=ok");
}
else {

	Header("Location:../../basvuru.php?durum=no");
}

?>