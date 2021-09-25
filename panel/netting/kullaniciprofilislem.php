<?php 

ob_start();
include 'baglan.php';


// Genel ayarları
if (isset($_POST['kullaniciprofilkaydet'])) {
	


$kullanici_password=md5($_POST['kullanici_password']);

$ayarkaydet=$db->prepare("UPDATE kullanici  SET 
	kullanici_adsoyad=:adsoyad,
	kullanici_password=:password
	WHERE kullanici_id={$_POST['kullanici_id']}");

$update=$ayarkaydet->execute(array(
	'adsoyad'=>$_POST['kullanici_adsoyad'],
	'password'=>$kullanici_password

));

}
if($update){

	Header("Location:../kullanici-profil.php?durum=ok");
}
else {

	Header("Location:../kullanici-profil.php?durum=no");
}





?>