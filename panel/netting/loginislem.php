<?php  

ob_start();
session_start();
include 'baglan.php';


if (isset($_POST['login'])) {
	

	$kullanici_ad=$_POST['kullanici_ad'];
	$kullanici_password=md5($_POST['kullanici_password']);

	if ($kullanici_ad&&$kullanici_password) {

		$kullanicisor=$db->prepare("Select * from kullanici where kullanici_ad=:ad and kullanici_password=:password");
		$kullanicisor->execute(array(
			'ad'=>$kullanici_ad,
			'password'=>$kullanici_password
		));
		echo $verisay=$kullanicisor->rowCount();
		
		




if($verisay>0){
	$_SESSION['kullanici_ad']=$kullanici_ad;

	Header("Location:../index.php?durum=ok");
}
else {

	Header("Location:../login.php?durum=no");
} 
}
}	

?>