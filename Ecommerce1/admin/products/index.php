<?php
require_once("../../include/init.php");
//checkAdmin();
	# code...
if(!isset($_SESSION['USERID'])){
	redirect(web_root."admin/index.php");
}

 
require_once ("../theme/file.php");
?>
  
