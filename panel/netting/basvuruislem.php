<?php 
ob_start();
session_start();
include 'baglan.php'; 




if (isset($_POST['basvurukaydet'])) {
	
$kaydet=$db->prepare("INSERT INTO basvuru  SET
	basvuru_ad=:ad,
	basvuru_soyad=:soyad,
	basvuru_mail=:mail,
	basvuru_telefon1=:telefon1,
	basvuru_telefon2=:telefon2,
	basvuru_meslek=:meslek,
	basvuru_dogumtarihi=:dogumtarihi,
	basvuru_teslimatilce=:teslimatilce,
	basvuru_teslimatadres=:teslimatadres,
	basvuru_hissetur=:hissetur,
	basvuru_odemeturu=:odemeturu,
	basvuru_vekalet=:vekalet


	
	"
);

$insert=$kaydet->execute(array(
	'ad'=>$_POST['basvuru_ad'],
	'soyad'=>$_POST['basvuru_soyad'],
	'mail'=>$_POST['basvuru_mail'],
	'telefon1'=>$_POST['basvuru_telefon1'],
	'telefon2'=>$_POST['basvuru_telefon2'],
	'meslek'=>$_POST['basvuru_meslek'],
	'dogumtarihi'=>$_POST['basvuru_dogumtarihi'],
	'teslimatilce'=>$_POST['basvuru_teslimatilce'],
	'teslimatadres'=>$_POST['basvuru_teslimatadres'],
	'hissetur'=>$_POST['basvuru_hissetur'],
	'odemeturu'=>$_POST['basvuru_odemeturu'],
	'vekalet'=>$_POST['basvuru_vekalet']


));

}
if($insert){


	Header("Location:../../basvuru.php?durum=ok");
}
else {

	Header("Location:../basvuru.php?durum=no");
}





?>