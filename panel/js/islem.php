<?php 

ob_start();
include 'baglan.php';


// Genel ayarları
if (isset($_POST['genelayarkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE ayar  SET 
	ayar_siteurl=:siteurl,
	ayar_title=:title,
	ayar_description=:description,
	ayar_keywords=:keywords,
	ayar_author=:author
	WHERE ayar_id=0");

$update=$ayarkaydet->execute(array(
	'siteurl'=>$_POST['ayar_siteurl'],
	'title'=>$_POST['ayar_title'],
	'description'=>$_POST['ayar_description'],
	'keywords'=>$_POST['ayar_keywords'],
	'author'=>$_POST['ayar_author']

));

}

if($update){

	Header("Location:../genel-ayar.php?durum=ok");
}
else {

	Header("Location:../genel-ayar.php?durum=no");
}


//iletisim ayarları



if (isset($_POST['iletisimayarkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE ayar  SET 
	ayar_tel=:tel,
	ayar_gsm=:gsm,
	ayar_fax=:fax,
	ayar_mail=:mail,
	ayar_adres=:mail,
	ayar_ilce=:ilce,
	ayar_il=:il,
	ayar_mesai=:mesai
	WHERE ayar_id=0");

$update=$ayarkaydet->execute(array(
	'tel'=>$_POST['ayar_tel'],
	'gsm'=>$_POST['ayar_gsm'],
	'fax'=>$_POST['ayar_fax'],
	'mail'=>$_POST['ayar_mail'],
	'adres'=>$_POST['ayar_adres'],
	'ilce'=>$_POST['ayar_ilce'],
	'il'=>$_POST['ayar_il'],
	'mesai'=>$_POST['ayar_mesai']

));

}



if($update){

	Header("Location:../iletisim-ayar.php?durum=ok");
}
else {

	Header("Location:../iletisim-ayar.php?durum=no");
}




//api ayarları

if (isset($_POST['apiayarkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE ayar  SET 
	ayar_recapctha=:recapctha,
	ayar_googlemap=:googlemap,
	ayar_analystic=:analystic
	
	WHERE ayar_id=0");

$update=$ayarkaydet->execute(array(
	'recapctha'=>$_POST['ayar_recapctha'],
	'googlemap'=>$_POST['ayar_googlemap'],
	'analystic'=>$_POST['ayar_analystic']

));

}

if($update){

	Header("../Location:api-ayar.php?durum=ok");
}
else {

	Header("../Location:api-ayar.php?durum=no");
}

//sosyal medya ayarları

if (isset($_POST['sosyalayarkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE ayar  SET 
	ayar_facebook=:facebook,
	ayar_twitter=:twitter,
	ayar_youtube=:youtube,
	ayar_google=:google
	
	WHERE ayar_id=0");

$update=$ayarkaydet->execute(array(
	'facebook'=>$_POST['ayar_facebook'],
	'twitter'=>$_POST['ayar_twitter'],
	'youtube'=>$_POST['ayar_youtube'],
	'google'=>$_POST['ayar_google']

));

}

if($update){

	Header("Location:../sosyal-ayar.php?durum=ok");
}
else {

	Header("Location:../sosyal-ayar.php?durum=no");
}



if (isset($_POST['mailayarkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE ayar  SET 
	ayar_smtphost=:smtphost,
	ayar_smtpuser=:smtpuser,
	ayar_smtppassword=:smtppassword,
	ayar_smtpport=:smtpport
	
	WHERE ayar_id=0");

$update=$ayarkaydet->execute(array(
	'smtphost'=>$_POST['ayar_smtphost'],
	'smtpuser'=>$_POST['ayar_smtpuser'],
	'smtppassword'=>$_POST['ayar_smtppassword'],
	'smtpport'=>$_POST['ayar_smtpport']

));

}

if($update){

	Header("Location:../mail-ayar.php?durum=ok");
}
else {

	Header("Location:../mail-ayar.php?durum=no");
}



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


// Slider ayarları
if (isset($_POST['sliderkaydet'])) {

 $uploads_dir = '../dimg/slider';
 @$tmp_name = $_FILES['slider_resimyol']["tmp_name"];
 @$name = $_FILES['slider_resimyol']["name"];
 $benzersizsayi1=rand(20000,32000);
 $benzersizsayi2=rand(20000,32000);
 $benzersizsayi3=rand(20000,32000);
 $benzersizsayi4=rand(20000,32000);
 $benzersizad=$benzersizsayi1.$benzersizsayi2.$benzersizsayi3.$benzersizsayi4;
 $refimgyol=substr($uploads_dir, 3)."/".$benzersizad.$name;
 @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizad$name");

	
$kaydet=$db->prepare("INSERT INTO slider  SET
	slider_ad=:ad,
	slider_link=:link,
	slider_sira=:sira,
	slider_durum=:durum,
	slider_resimyol=:resimyol");

$insert=$kaydet->execute(array(
	'ad'=>$_POST['slider_ad'],
	'link'=>$_POST['slider_link'],
	'sira'=>$_POST['slider_sira'],
	'durum'=>$_POST['slider_durum'],
	'resimyol'=>$refimgyol
	
));

}

if($insert){

	Header("Location:../slider.php?durum=ok");
}
else {

	Header("Location:../slider.php?durum=no");
}


//Slider Silme İşlemi


if ($_GET['slidersil']=="ok"]) {
	
	$sil=$db->prepare("DELETE from slider WHERE slider_id=:slider_id");
	$kontrol=$sil->execute(array(
		'slider_id' =>$_GET['slider_id']

	));

	if($kontrol){

	Header("Location:../slider.php?durum=ok");
}
else {

	Header("Location:../slider.php?durum=no");
}


}





 ?>