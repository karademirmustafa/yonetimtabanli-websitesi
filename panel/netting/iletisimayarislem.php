
<?php  
ob_start();
include 'baglan.php';

//iletisim ayarları

if (isset($_POST['iletisimayarkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE ayar  SET 
	ayar_tel=:tel,
	ayar_gsm=:gsm,
	ayar_fax=:fax,
	ayar_mail=:mail,
	ayar_adres=:adres,
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

?>