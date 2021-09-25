<?php include 'header.php'; 

include 'netting/baglan.php';
                          
if (isset($_POST['arama'])) {

$aranan=$_POST['aranan'];

$basvurusor=$db->prepare("SELECT * FROM basvuru  where basvuru_ad LIKE '%$aranan%' ORDER BY basvuru_id ASC");
                  $basvurusor->execute();


}else{
$basvurusor=$db->prepare("SELECT * FROM basvuru   ORDER BY basvuru_id ASC");
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
                      
                        </thead>

                        <tbody>

                          <?php
                           

                          while ($basvurucek=$basvurusor->fetch(PDO::FETCH_ASSOC)) { ?>
                            


                         <form action="netting/basvuruduzenleislem.php" method="POST" id="demo-form2" data-parsley-validate class
                         ="form-horizontal form-label-left">
                   <div class="col-md-10 col-sm-10 col-xs-12">
                    <div class="form-group">
                        
                        <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Başvuru No : <?php echo $basvurucek['basvuru_id']; ?><span class="required"></span>
                        </label>
                        
                        <br>
                        
                          <input type="text" id="first-name" required="required" name="basvuru_not" value="<?php echo $basvurucek['basvuru_not']; ?>" class="form-control col-md-7 col-xs-12">
                          
                      
                      </div>
                      
                    </div>
                      <div class="col-md-3 col-sm-3 col-xs-6">
                    <div class="form-group">
                           <select id="heard" class="form-control" name="basvuru_odeme" required>
                               <?php if ($basvurucek['basvuru_odeme']=="0") { ?>
                              <option value="0">Hayır</option>
                           <option value="1">Evet</option>
                              
                           <?php } >else{ ?>
                            <option value="1">Evet</option>
                           <option value="0">Hayır</option>
                            <?php} ?>
                           
                         </select>   

                    
                        
                        
                          
                      
                      </div>
                      
                    </div>

                          
                           
                          
                            


                            
                            

                     



                          
                         
                          
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
