<?php
require_once("../../include/init.php");
//checkAdmin();
	 if (!isset($_SESSION['USERID'])){
      redirect(web_root."admin/index.php");
     }

$view = (isset($_GET['view']) && $_GET['view'] != '') ? $_GET['view'] : '';
 $title="Orders";
 $header=$view; 
switch ($view) {
	case 'list' :
		$content    = 'list.php';		
		break;

	case 'addtocart' :
		$content    = 'addtocart.php';		
		break;

	case 'edit' :
		$content    = 'edit.php';		
		break;
    case 'view' :
		$content    = 'view.php';		
		break;

	 case 'addorder' :
		$content    = 'addorder.php';		
		break;

	case 'orderdetails' :
		$content    = 'order-details.php';		
		break;

	case 'billing' :
		$content    = 'billing.php';		
		break;

	case 'customer-details' :
	 	$header = "Customer Details";
		$content    = 'customer-detail.php';		
		break;

	case 'orderedproduct' :
		$content    = 'ordered-product.php';		
		break;

	default :
		$content    = 'list.php';		
}
require_once ("../theme/file.php");
?>
  
