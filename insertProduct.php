<?php
include("config.php");


if(isset($_POST['insert'])){
	$ID=$_POST['ID'];
	$title=$_POST['title'];
	$category=$_POST['category'];
	$price=$_POST['price'];
	$quantity=$_POST['Quantity'];
	$description=$_POST['Description'];
	$image=$ID.'.jpg';
	
	$sql="insert into product_detail values ('$ID','$title','$price','$image','$quantity','$category','$description','1')";
	
	$result-$conn->query($sql);
	
	
	
	
}


?>

<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Product</title>
<link href="global.css" rel="stylesheet">
<style>

</style>
</head>
<body>
<h1>Product Information</h1>
<form class="subform"  method="post" action="insertProduct.php" enctype="multipart/form-data">

	<p>
		<label for="ID" class="label">Product ID</label>
		<input type="text" name="ID" id="ID">
	</p>
	<p>
		<label for="name" class="label">Title</label>
		<input type="text" name="title" id="title">
	</p>
	
	
	<p>
		<label for="category" class="label">Category</label>
		<select name="category" id="category">
			<option value="null">Select One</option>
			<option value="Asus">Asus</option>
			<option value="Huawei">Huawei</option>
			<option value="Samsung">Samsung</option>
			
		</select>
	</p>
	<p>
		<label for="Quantity" class="label">Quantity</label>
		<input name="Quantity" id="Quantity" type="text" />
	</p>
	<p>
		<label for="price" class="label">Price</label>
		<input name="price" id="price" type="text" />
	</p>
	<p>
		<label for="Description" class="label">Description</label>
		<textarea name="Description" id="Description"></textarea>
	</p>
	<p>
		Select image to upload:
		<input type="file" name="fileToUpload" id="fileToUpload">
	</p>
	<p>
		<input type="submit" name="insert" value="Insert">
	</p>
</form>
</body>
</html>