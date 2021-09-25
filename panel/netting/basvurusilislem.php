<?php  ob_start();
session_start();	
include 'baglan.php';


if ($_GET['basvurusil']=="ok") {
	
	$sil=$db->prepare("DELETE from basvuru WHERE basvuru_id=:basvuru_id");
	$kontrol=$sil->execute(array(
		'basvuru_id' =>$_GET['basvuru_id']

	));

	if($kontrol){
			

	Header("Location:../basvurukisiselliste.php?durum=ok");
}
else {

	Header("Location:../basvurukisiselliste?durum=no");
}


}

?> 