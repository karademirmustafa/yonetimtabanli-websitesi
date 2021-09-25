<?php 
ob_start();
include 'baglan.php'; 


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


 ?>