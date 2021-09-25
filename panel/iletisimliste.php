<?php include 'header.php'; 

include 'netting/baglan.php';
                          
if (isset($_POST['arama'])) {

$aranan=$_POST['aranan'];

$iletisimsor=$db->prepare("SELECT * FROM iletisim  where iletisim_adsoyad LIKE '%$aranan%' ORDER BY iletisim_id ASC");
                  $iletisimsor->execute();


}else{
$iletisimsor=$db->prepare("SELECT * FROM iletisim");
                  $iletisimsor->execute();
                  $say=$iletisimsor->rowCount();

}
    


?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              

             
            </div>

             <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  
                  <form action="" method="POST">
                     <input type="hidden" name="iletisim_id" value="<?php echo $iletisimcek['iletisim_id']; ?>">
                  <div class="input-group">
                   
                    <input type="text" class="form-control"  name="aranan" placeholder="Anahtar Kelime Giriniz..">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="submit" name="arama" >Ara!</button>
                    </span>
                  </div>
                  </form>
                </div>
              </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                
                 
                  <div class="x_content">
                     

                <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                     <div align="left" class="col-md-6">
                    <h2>İletişim Listesi  <small><?php echo $say." Kayıt Listelendi."; ?>
                      <?php if ($_GET['durum']=='ok') 
                       { ?>
                     <b style="color:green;">İşlem Başarılı..</b>
                   <?php } else if($_GET['durum']=='no'){ ?>  
                    <b style="color:red;">İşlem Başarısız..</b>
                    <?php } ?>
                     </small>   </h2>
                  </div>
                   
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            
                            <th class="column-title  ">İletişim No </th>  
                            <th class="column-title  ">Adı Soyadı </th>  
                            <th class="column-title ">Telefon </th>
                            <th class="column-title ">Mail</th>  
                            <th class="column-title  "></th> 
                            
                          
                        
                            
                            </th>
                           
                          </tr>
                        </thead>

                        <tbody>

                          <?php
                           

                          while ($iletisimcek=$iletisimsor->fetch(PDO::FETCH_ASSOC)) { ?>
                            


                         

                          <tr>
                           
                            <td ><?php echo $iletisimcek['iletisim_id']; ?></td> 
                            <td ><?php echo $iletisimcek['iletisim_adsoyad']; ?></td>   
                                
                            <td ><?php echo $iletisimcek['iletisim_telefon']; ?></td>                       
                            <td ><?php echo $iletisimcek['iletisim_mail']; ?></td>
                          
                        
                           
                            


                            


                            <td class="text-center "><a href="netting/iletisimsilislem.php?iletisimsil=ok&iletisim_id=<?php echo $iletisimcek['iletisim_id']; ?>"><button  style="width:80px" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i>Sil</button></a></td>
                            

                            </td>

                          </tr>




                          
                         
                          
                           <?php   }  ?> 
                          
                        
                         

                          
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>

                   
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
