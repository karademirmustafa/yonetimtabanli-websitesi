<?php

try{

$db=new PDO("mysql:host=www.kolayhissekutahya.com;dbname=kutahy25_agd2020;charset=utf8",'kutahy25_agd2020','b339f4d2a44b2833');

//echo "veritabanı bağlantısı başarılı";


}

catch (PD0Exception $e) {

echo $e--> getMessage();


}

