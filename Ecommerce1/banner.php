<?php

  $query="SELECT count(IMAGES) as 'counts'  FROM `tpromopro` pr , `tproduct` p  
  WHERE pr.`PROID`=p.`PROID` and `PROBANNER`=1";
  $mydb->setQuery($query);
  $cur = $mydb->loadResultList(); 
  foreach ($cur as $result) {
  $maxrow = $result->counts; 
  }
 
?>
 

