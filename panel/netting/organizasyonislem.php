<?php  

ob_start();
include 'baglan.php';

// Hakkımızda ayarları
if (isset($_POST['organizasyonkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE organizasyon  SET 
	organizasyon_baslik=:baslik,
	organizasyon_icerik=:icerik,
	organizasyon_video=:video,
	organizasyon_metin=:metin,
	organizasyon_metin2=:metin2
	WHERE organizasyon_id=0");

$update=$ayarkaydet->execute(array(
	'baslik'=>$_POST['organizasyon_baslik'],
	'icerik'=>$_POST['organizasyon_icerik'],
	'video'=>$_POST['organizasyon_video'],
	'metin'=>$_POST['organizasyon_metin'],
	'metin2'=>$_POST['organizasyon_metin2']

));

}

if($update){

	Header("Location:../organizasyonumuz.php?durum=ok");
}
else {

	Header("Location:../organizasyonumuz.php?durum=no");
}

?>