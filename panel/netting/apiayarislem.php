 <?php  

ob_start();

include 'baglan.php';	
//api ayarları

if (isset($_POST['apiayarkaydet'])) {
	
$ayarkaydet=$db->prepare("UPDATE ayar  SET 
	ayar_recapctha=:recapctha,
	ayar_googlemap=:googlemap,
	ayar_analystic=:analystic
	
	WHERE ayar_id=0");

$update=$ayarkaydet->execute(array(
	'recapctha'=>$_POST['ayar_recapctha'],
	'googlemap'=>$_POST['ayar_googlemap'],
	'analystic'=>$_POST['ayar_analystic']

));

}

if($update){

	Header("Location:../api-ayar.php?durum=ok");
}
else {

	Header("Location:../api-ayar.php?durum=no");
}


?>
