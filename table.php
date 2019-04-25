<?php
include('config.php');
	// for delete selected item
	if(empty($_REQUEST['item'])) {    
	// No items checked
	}
	else {    //$deleteName = checkbox value = prodcut primary key
		foreach($_REQUEST['item'] as $deleteName) {		
			$sql="update product_detail set available='0' where ID='$deleteName'";
			$result=$conn->query($sql);		
		}
	}
	

?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Information</title>
<link href="main.css" rel="stylesheet">
<script>
	function ConfirmDelete() {  

		return confirm("Are you sure you want to delete?");
	}

</script>
</head>

<body>
	<h1>ABC Company Product Info</h1>
	<form action="table.php" method="post">
	<table class="inventory" width="100%">
		<caption>
			Welcome! User1
		</caption>
		<colgroup>
			<col id="-">
			<col id="productID">
			<col id="productName">
			<col id="price">
			<col id="quantity">			
		</colgroup>
		<tr>
			<th scope="col">&nbsp;</th>
			<th scope="col">Product ID</th>
			<th scope="col">Product Name</th>
			<th scope="col">Price</th>
			<th scope="col">Quantity</th>
		</tr>
<?php
$sql="select ID,title,price,quantity from product_detail where available='1'";
$result=$conn->query($sql);
if($result->num_rows>0){
	while($row=$result->fetch_assoc()){
?>
		<!-- Loop data from product_detail -->
		<tr>
			<td><input type="checkbox" name="item[]" value="<?php echo 	$row["ID"]; ?>" /></td>
			<td><?php echo $row['ID'];?></td>
			<td><?php echo $row['title'];?></td>
			<td><?php echo $row['price'];?></td>
			<td><?php echo $row['quantity'];?></td>			
		</tr>

<?php
			}
		}
?>				
		<!-- end loop -->
		<tr align="center">
			<td colspan="5"><input type="submit" value="delete" Onclick="return ConfirmDelete()" />
			</td>
		</tr>
		
	</table>
	</form>
</body>
</html>
