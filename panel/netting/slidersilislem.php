<?php  ob_start();
include 'baglan.php';


if ($_GET['slidersil']=="ok") {
	
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