<?php

 include 'header.php';

 include 'panel/netting/baglan.php'; 



$ayarsor=$db->prepare("select * from ayar where ayar_id=?");
$ayarsor->execute(array(0));
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);


 ?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
  
              </div>

              <!-- sağ arama butonu
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Anahtar Kelimeniz">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Ara</button>
                    </span>
                  </div>
                </div>
              </div>
            </div> -->

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                
                 
                  <div class="x_content">
                     

<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    
                    <ul class="nav navbar-right panel_toolbox">
                      
                      
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                   <form action="panel/netting/basvuruislem.php" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
<div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title text-center">KOLAY HİSSE KAYIT FORMU</div>
                        </div>  
                        <div class="panel-body">
            <?php if ($_GET['durum']=='ok') 
                       { ?>
                     <b style="width:100;color:green;">Başvuru Kaydınız Alınmıştır...</b>
                   <?php } else if($_GET['durum']=='no'){ ?>  
                    <b style="color:red;">İşlem Başarısız..</b>
                    <?php } ?>

                            <form method="post" class="form-horizontal" target="yorumg" action="netting/basvuruislem.php" role="form">
              
            
        
                            <div class="bg-primary col-md-12" style="border-radius:5px;margin-bottom:10px;padding:2px 5px;">Kişisel Bilgiler</div>
              
              
              
               <div class="col-md-6">
                                   
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Ad*</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="basvuru_ad" placeholder="">
                                    </div>
                                </div>            
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Soyad*</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="basvuru_soyad" placeholder="">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Telefon 1*</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="basvuru_telefon1">
                                    </div>
                                </div>
                
                      
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Telefon 2</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="basvuru_telefon2">
                                    </div>
                                </div>
                
                
              </div>
              
               <div class="col-md-6">
                                   
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">E-Posta</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="basvuru_mail" placeholder="">
                                    </div>
                                </div>            
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Meslek</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="basvuru_meslek" placeholder="">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Doğum Tarihi</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="basvuru_dogumtarihi">
                                    </div>
                                </div>
                
                      
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Cinsiyet</label>
                                    <div class="col-md-9">
                                        <select class="form-control" name="basvuru_cinsiyet">
                      <option value="">Seçiniz</option>
                      <option value="Erkek">Erkek</option>
                      <option value="Bayan">Bayan</option>
                    
                    </select>
                                    </div>
                                </div>
                
              </div>
              
              
              <div class="bg-primary col-md-12" style="border-radius:5px;margin-bottom:10px;padding:2px 5px;">Teslimat Bilgileri</div>
              
              


<script type="text/javascript">
  function teslimatdegisti() {
  
  if (document.getElementById('teslimatayni').checked == true)  {
  document.getElementById('teslimatg').style.display = 'none';
  }else {
  document.getElementById('teslimatg').style.display = 'block';
  }

  }
  </script>
              
               <div class="col-md-6">

                 <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Teslimat İlçe*</label>
                                    <div class="col-md-9">
                                        <select class="form-control" name="basvuru_teslimatilce">
                      <option value="Seçilmemiş">Seçiniz</option>
                      
      
<option value="Merkez">Merkez</option>
<option value="Tavşanlı">Tavşanlı</option>
<option value="Simav">Simav</option>
<option value="Gediz">Gediz</option>
<option value="Emet">Emet</option>
<option value="Altıntaş">Altıntaş</option>
<option value="Domaniç">Domaniç</option>
<option value="Hisarcık">Hisarcık</option>
<option value="Aslanapa">Aslanapa</option>
<option value="Çavdarhisar">Çavdarhisar</option>
<option value="Şaphane">Şaphane</option>
<option value="Pazarlar">Pazarlar</option>
<option value="Dumlupınar">Dumlupınar</option>

                    
                    </select>
                                    </div>
                                </div>
                                </div>

               <div class="col-md-6"> 
                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Teslimat Adres*</label>
                                    <div class="col-md-9">
                                        <textarea name="basvuru_teslimatadres" class="form-control"></textarea>
                                    </div>
                                </div>
                
                
              </div>
              
              
              
              
              <div class="bg-primary col-md-12" style="border-radius:5px;margin-bottom:10px;padding:2px 5px;">Ödeme Bilgileri</div>
              

               <div class="col-md-6">

                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Hisse Türü*</label>
                                    <div class="col-md-9">
                                        <select class="form-control" name="basvuru_hissetur">
                      <option value="">Seçiniz</option>
                      
                    
                      <option value="BAĞIŞ HİSSE 1100 TL">BAĞIŞ HİSSE 1100 TL</option>
                      
                      
                    </select>
                                    </div>
                                </div>
                
                
              </div>
              
               <div class="col-md-6">

                 <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Ödeme Türü*</label>
                                    <div class="col-md-9">
                                        <select class="form-control" name="basvuru_odemeturu">
                      <option value="">Seçiniz</option>
                      <option value="Nakit">Elden (Nakit)</option>
                      <option value="Eft">Havale / EFT</option>
                      <option value="Kart">Kredi Kartı</option>
                      
              
                    </select>
                                    </div>
                                </div>
                
              </div>
              
              
              <div class="col-md-12">

                <div class="form-group">
            
                  <label for="firstname" style="text-align:left;color:#5BC0DE" class="col-md-11 col-md-offset-1 control-label">
                  Allah rızası için bayram kurbanımı almaya aldırmaya, kesmeye ve dilediğine kestirmeye ve derisini dilediğine vermeye Anadolu Gençlik Derneği'ni umumi vekil ettim.
                  </label>
              
                                </div>
                                <div class="form-group">
                
                  <div class="col-md-1  col-md-offset-1">
                                        <input type="checkbox" style="width:auto;float:right;" required="" class="form-control" name="basvuru_vekalet" value="evet">
                                    </div>

                  <label for="firstname" style="text-align:left;color:#333333" class="col-md-10 control-label">
                  Vekalet Veriyorum
                  </label>
                  
                                </div>
                
                
                  
                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-11 col-md-offset-1">
                                        <button id="btn-signup" name="basvurukaydet" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp; Başvuru Yap</button>
                                        
                                    </div>
                                </div>
                
              </div>
              

                
                            </form>
              
              <iframe name="yorumg" width="0" height="0" style="visibility:hidden" __idm_frm__="3614"></iframe> 
                         </div>
                    </div>
                      </div>
                     


                  </form>
                  </div>
                </div>
              </div>






                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->


        <!-- footer content -->
        
        <?php include 'footer.php'; ?>
