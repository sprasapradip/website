
<?php
require_once ("../../include/init.php");
	 if (!isset($_SESSION['USERID'])){
      redirect(web_root."index.php");
     }


if(isset($_POST['close'])){
	unset($_SESSION['ordernumber']);
}

if (isset($_POST['ordernumber'])){
	$_SESSION['ordernumber'] = $_POST['ordernumber'];
}


$query = "SELECT * FROM `tsummary` s ,`tcustomer` c 
				WHERE   s.`CUSTOMERID`=c.`CUSTOMERID` and ORDEREDNUM=".$_SESSION['ordernumber'];
		$mydb->setQuery($query);
		$cur = $mydb->loadSingleResult();


?>

<div class="modal-dialog" style="width:70%">
<div class="modal-content">
	<div class="modal-header">
		<button class="close" id="btnclose" data-dismiss="modal" type=
		"button">×</button>
		<h2>Order Number : <?php echo $_SESSION['ordernumber']; ?></h2>

		
		
	</div>
	<div class="row" style="margin:2%">
		<div class="col-md-6">Name : <?php echo $cur->FNAME . ' '.  $cur->LNAME ;?></div>
		<div class="col-md-6">Address:  <?php echo $cur->CUSHOMENUM . ' ' . $cur->STREETADD . ' ' .$cur->BRGYADD . ' ' . $cur->CITYADD . ' ' .$cur->PROVINCE . ' ' .$cur->COUNTRY; ?>
     </div>
	</div>
		

		 
	<form action="controller.php?action=photos&id=<?php echo $customerid; ?>" enctype="multipart/form-data" method=
	"post">
		<div class="modal-body"> 
		<table id="table" class="table">
			<thead>
				<tr>
					<th>PRODUCT</th>
					<th>DESCRIPTION</th>
					<th>PRICE</th>
					<th>QUANTITY</th>
					<th>TOTAL PRICE</th> 
					<th>STATUS</th>
					<!-- <th></th>  -->
				</tr>
				</thead>
				<tbody>
 
				<?php
				  $subtot =0;
				  $query = "SELECT * 
							FROM  `tblproduct` p, tblcategory ct,  `tblcustomer` c,  `tblorder` o,  `tblsummary` s
							WHERE p.`CATEGID` = ct.`CATEGID` 
							AND p.`PROID` = o.`PROID` 
							AND o.`ORDEREDNUM` = s.`ORDEREDNUM` 
							AND s.`CUSTOMERID` = c.`CUSTOMERID` 
							AND o.`ORDEREDNUM`=".$_SESSION['ordernumber'];
				  		$mydb->setQuery($query);
				  		$cur = $mydb->loadResultList(); 
						foreach ($cur as $result) {
						echo '<tr>';  
				  		echo '<td ><img src="'.web_root.'admin/products/'. $result->IMAGES.'" width="60px" height="60px" title="'.$result->PRODESC.'"/></td>';
				  	 	echo '<td>'. $result->PRODESC.'</td>';
				  		echo '<td> &#8360.  '.number_format($result->PROPRICE,2).' </td>';
				  		echo '<td align="center" >'. $result->ORDEREDQTY.'</td>';
				  		?>
				  		 <td> &#8360.  <output><?php echo number_format($result->ORDEREDPRICE,2); ?></output></td> 
				  		<?php
				  		echo '<td id="status" >'. $result->ORDEREDSTATS.'</td>';
				  	 	echo '</tr>';
				 $subtot +=$result->ORDEREDPRICE;
				}
				?> 
			</tbody> 
		<?php 
				 $query = "SELECT * FROM `tsummary` s ,`tcustomer` c 
				WHERE   s.`CUSTOMERID`=c.`CUSTOMERID` and ORDEREDNUM=".$_SESSION['ordernumber'];
		$mydb->setQuery($query);
		$cur = $mydb->loadSingleResult();

		?>
	 
       </table> 
       <hr/>
       <div class="row">
		  	<div class="col-md-6 pull-left">
		  	 <div>Ordered Date : <?php echo date_format(date_create($cur->ORDEREDDATE),"M/d/Y h:i:s"); ?></div> 
		  		<div>Payment Method : <?php echo $cur->PAYMENTMETHOD; ?></div>

		  	</div>
		  	<div class="col-md-6 pull-right">
		  		<p align="right">Total Price : &#8360.  <?php echo number_format($subtot,2);?></p>
		  		<p align="right">Delivery Fee : &#8360.  <?php echo number_format($cur->DELFEE,2); ?></p>
		  		<p align="right">Overall Price : &#8360.  <?php echo number_format($cur->PAYMENT,2); ?></p>
		  	</div>
		  </div> 
		</div>   
		<div class="modal-footer">
			<button class="btn btn_fixnmix" id="btnclose" data-dismiss="modal" type=
			"button">Close</button>  
		</div>

	</form>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->

<script>


  var table = document.getElementById('table');
    var items = table.getElementsByTagName('output');
    var sum = 0;

    // total price
    for(var i=0; i<items.length; i++)
        sum +=  parseInt(items[i].value);        
// for cart
    var totprice = document.getElementById('sum');
    totprice.innerHTML =  sum.toFixed(2);
    </script>