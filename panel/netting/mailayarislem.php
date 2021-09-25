
<?php  
 ob_start();
include 'baglan.php';
//mail ayarları

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


?>