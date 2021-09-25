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





?>