<?php 
ob_start();
session_start();
include 'baglan.php'; 




if (isset($_POST['iletisimkaydet'])) {
	
$kaydet=$db->prepare("INSERT INTO iletisim  SET
	iletisim_adsoyad=:adsoyad,
	iletisim_mail=:mail,
	iletisim_telefon=:telefon,
	iletisim_mesaj=:mesaj,
	iletisim_konu=:konu
	

	
	"
);

$insert=$kaydet->execute(array(
	'adsoyad'=>$_POST['iletisim_adsoyad'],
	'mail'=>$_POST['iletisim_mail'],
	'telefon'=>$_POST['iletisim_telefon'],
	'mesaj'=>$_POST['iletisim_mesaj'],
	'konu'=>$_POST['iletisim_konu']
	

));

}
if($insert){


	Header("Location:../../iletisim.php?durum=ok");
}
else {

	Header("Location:../iletisim.php?durum=no");
}





?>