<?php 
include("config.php"); //connect DB
session_start(); //start sesssion
if(isset($_SESSION['user'])){
    $user=$_SESSION['user']; //assign value to User
}

if(isset($_POST['total'])){
    $subtotal=$_POST['subtotal']; //get subtotal from myCart
    $tax=$_POST['tax'];// get tax from myCart
    $total=$_POST['total'];//get total from myCart

    $sql="insert into myOrder (userID,amount,orderDate) values('$user','$total',curdate())";	
	$result = $conn->query($sql);
	// get order ID from user
	$getOrderID="select max(ID) as orderID from myorder where userID='$user'";
	$result = $conn->query($getOrderID);
	if ($result->num_rows > 0) {    
		while($row = $result->fetch_assoc()) {
			$orderID=$row['orderID'];
		}
    }    

    if(empty($_REQUEST['item'])) {
        // No items checked
    }
    else {
        //update cart item based order ID
        foreach($_REQUEST['item'] as $cartID) {
            //update orderID to cart
            $update_sql="update cart set orderID='$orderID' where ID='$cartID'";
            $result = $conn->query($update_sql);        
        }
    }
}

?>
<table border="1">
    <tr>
        <td>Order ID: <?php echo $orderID; ?></td>
        <td><?php echo $user; ?></td>
        <td>Date: <?php echo date("Y/m/d"); ?></td>
        <td>Total Amount: RM <?php echo $total; ?></td>
    </tr>
    <tr>
        <td>Product ID</td>
        <td>Product Name</td>
        <td>Quantity</td>
        <td>Subtotal</td>
    </tr>
<?php

$sql="SELECT a.*,b.*,c.title FROM `myorder` as a left join cart as b on a.ID=b.orderID left join product_detail as c on b.productID=c.ID where a.userID='$user' and a.ID='$orderID'";

$result = $conn->query($sql);
	if ($result->num_rows > 0) {    
		while($row = $result->fetch_assoc()) {
            ?>
                <tr>
                    <td><?php echo $row['productID']; ?></td>
                    <td><?php echo $row['title']; ?></td>
                    <td><?php echo $row['pQuantity']; ?></td>
                    <td></td>
                </tr>
            <?php
        }
    }
?>
</table>