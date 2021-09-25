<?php include 'header.php'; 

include 'netting/baglan.php';
                          
if (isset($_POST['arama'])) {

$aranan=$_POST['aranan'];

$basvurusor=$db->prepare("SELECT * FROM basvuru  where basvuru_ad LIKE '%$aranan%' ORDER BY basvuru_id ASC");
                  $basvurusor->execute();


}else{
$basvurusor=$db->prepare("SELECT * FROM basvuru   ORDER BY basvuru_sira ASC");
                  $basvurusor->execute();
                  $say=$basvurusor->rowCount();

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
                    <h2>Başvuru İşlemleri  <small><?php echo $say." Kayıt Listelendi."; ?>
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
                            
                           <th class="column-title  ">Başvuru Sırası </th>  
                            <th class="column-title  ">Teslimat İlçesi </th>  
                            <th class="column-title ">Teslimat Adresi </th>
                            
                            <th class="column-title "></th>
                            <th class="column-title "></th>
                               
                         
                          
                         
                            
                            </th>
                           
                          </tr>
                        </thead>

                        <tbody>

                          <?php
                           

                          while ($basvurucek=$basvurusor->fetch(PDO::FETCH_ASSOC)) { ?>
                            


                         

                          <tr>
                           
                           <td ><?php echo $basvurucek['basvuru_id']; ?></td> 
                            <td ><?php echo $basvurucek['basvuru_teslimatilce']; ?></td>   
                            <td ><?php echo $basvurucek['basvuru_teslimatadres']; ?></td>      
                           
                           
                            


                            


                            <td class="text-center "><a href="netting/basvurusilislem.php?basvurusil=ok&basvuru_id=<?php echo $basvurucek['basvuru_id']; ?>"><button  style="width:80px" class="btn btn-danger btn-xs"><i class="fa fa-pencil" aria-hidden="true"></i>Sil</button></a></td>
                            

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
