<?php  

ob_start();
include 'baglan.php';

// Hakkımızda ayarları
if (isset($_POST['hakkimizdakaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE hakkimizda  SET 
	hakkimizda_baslik=:baslik,
	hakkimizda_icerik=:icerik,
	hakkimizda_video=:video,
	hakkimizda_vizyon=:vizyon,
	hakkimizda_misyon=:misyon
	WHERE hakkimizda_id=0");

$update=$ayarkaydet->execute(array(
	'baslik'=>$_POST['hakkimizda_baslik'],
	'icerik'=>$_POST['hakkimizda_icerik'],
	'video'=>$_POST['hakkimizda_video'],
	'vizyon'=>$_POST['hakkimizda_vizyon'],
	'misyon'=>$_POST['hakkimizda_misyon']

));

}

if($update){

	Header("Location:../hakkimizda.php?durum=ok");
}
else {

	Header("Location:../hakkimizda.php?durum=no");
}

?>