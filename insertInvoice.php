<?php 
include("config.php");
session_start();
if(isset($_SESSION['user'])){
    $user=$_SESSION['user'];
}

if(isset($_POST['total'])){
    $subtotal=$_POST['subtotal'];
    $tax=$_POST['tax'];
    $total=$_POST['total'];

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