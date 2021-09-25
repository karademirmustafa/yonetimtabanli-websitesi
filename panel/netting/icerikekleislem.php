<?php ob_start();
include 'baglan.php'; 

// Slider ayarları
if (isset($_POST['icerikkaydet'])) {

 $uploads_dir = '../../dimg/icerik';
 @$tmp_name = $_FILES['icerik_resimyol']["tmp_name"];
 @$name = $_FILES['icerik_resimyol']["name"];
 $benzersizsayi1=rand(20000,32000);
 $benzersizsayi2=rand(20000,32000);
 $benzersizsayi3=rand(20000,32000);
 $benzersizsayi4=rand(20000,32000);
 $benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
 $refimgyol=substr($uploads_dir, 6)."/".$benzersizad.$name;
 @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");

$tarih=$_POST['icerik_tarih'];
$saat=$_POST['icerik_saat'];
$zaman=	$tarih." ".$saat;

	
$kaydet=$db->prepare("INSERT INTO icerik  SET
	icerik_ad=:ad,
	icerik_detay=:detay,
	icerik_keyword=:keyword,
	icerik_durum=:durum,
	icerik_resimyol=:resimyol,
	icerik_zaman=:zaman"
);

$insert=$kaydet->execute(array(
	'ad'=>$_POST['icerik_ad'],
	'detay'=>$_POST['icerik_detay'],
	'keyword'=>$_POST['icerik_keyword'],
	'durum'=>$_POST['icerik_durum'],
	'resimyol'=>$refimgyol,
	'zaman'=>$zaman
	
));

}

if($insert){

	Header("Location:../icerik.php?durum=ok");
}
else {

	Header("Location:../icerik.php?durum=no");
}

?>