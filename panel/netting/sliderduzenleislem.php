<?php  

ob_start();
include 'baglan.php';


// Genel ayarları
if (isset($_POST['sliderduzenle'])) {

if ($_FILES['slider_resimyol']["size"] > 0) {

$uploads_dir = '../../dimg/slider';
 @$tmp_name = $_FILES['slider_resimyol']["tmp_name"];
 @$name = $_FILES['slider_resimyol']["name"];
 $benzersizsayi1=rand(20000,32000);
 $benzersizsayi2=rand(20000,32000);
 $benzersizsayi3=rand(20000,32000);
 $benzersizsayi4=rand(20000,32000);
 $benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
 $refimgyol=substr($uploads_dir, 6)."/".$benzersizad.$name;
 @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");
$slider_id=$_POST['slider_id'];

$duzenle=$db->prepare("UPDATE slider  SET 
	slider_ad=:ad,
	slider_link=:link,
	slider_sira=:sira,
	slider_durum=:durum,
	slider_resimyol=:resimyol

	WHERE slider_id={$_POST['slider_id']}");

$update=$duzenle->execute(array(
	'ad'=>$_POST['slider_ad'],
	'link'=>$_POST['slider_link'],
	'sira'=>$_POST['slider_sira'],
	'durum'=>$_POST['slider_durum'],
	'resimyol'=>$refimgyol,
	



));


if($update){

	Header("Location:../slider-duzenle.php?slider_id=$slider_id&durum=ok");
}
else { Header("Location:../slider-duzenle.php?durum=no");


}








	
}	else {

$slider_id=$_POST['slider_id'];

$duzenle=$db->prepare("UPDATE slider  SET 
	slider_ad=:ad,
	slider_link=:link,
	slider_sira=:sira,
	slider_durum=:durum

	WHERE slider_id={$_POST['slider_id']}");

$update=$duzenle->execute(array(
	'ad'=>$_POST['slider_ad'],
	'link'=>$_POST['slider_link'],
	'sira'=>$_POST['slider_sira'],
	'durum'=>$_POST['slider_durum']
	



));


if($update){
	
	



	Header("Location:../slider-duzenle.php?slider_id=$slider_id&durum=ok");
}
else { Header("Location:../slider-duzenle.php?durum=no");


}


}
}





?>