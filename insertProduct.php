<?php
include("config.php");
session_start();

			//------------logout----------------------------
			if(isset($_GET['u'])){
				if($_GET['u']=='logout'){
				session_destroy();
				echo "<script>window.location.assign('index.html');</script>";
				}
			}			
			if($_SESSION['user']!=''){
				$user=$_SESSION['user'];
			}
			else{
				echo "<script>window.location.assign('index.html');</script>";
			}


if(isset($_POST['insert'])){
	$ID=$_POST['ID'];
	$title=$_POST['title'];
	$category=$_POST['category'];
	$price=$_POST['price'];
	$quantity=$_POST['Quantity'];
	$description=$_POST['Description'];
	$image=$ID.'.jpg';
	
	$sql="insert into product_detail values ('$ID','$title','$price','$image','$quantity','$category','$description','1')";
	
	$result=$conn->query($sql);

	$target_dir = "images/";  //step1
	$target_file = $target_dir . $image; //step 2
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
	// Check if image file is a actual image or fake image
	if(isset($_POST["submit"])) {
		$check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
		if($check !== false) {
			echo "File is an image - " . $check["mime"] . ".";
			$uploadOk = 1;
		} else {
			echo "File is not an image.";
			$uploadOk = 0;
		}
	}
	
	// Check file size
	if ($_FILES["fileToUpload"]["size"] > 500000) {
		echo "Sorry, your file is too large.";
		$uploadOk = 0;
	}
	// Allow certain file formats
	if($imageFileType != "jpg") {  //step 3
		echo "Sorry, only JPG file are allowed.";
		$uploadOk = 0;
	}
	// Check if $uploadOk is set to 0 by an error
	if ($uploadOk == 0) {
		echo "Sorry, your file was not uploaded.";
	// if everything is ok, try to upload file
	} else {
		if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
			echo "The file has been uploaded.";
		} else {
			echo "Sorry, there was an error uploading your file.";
		}
	}	
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
<h5><?php echo $user; ?><a href="table.php?u=logout">Logout</a></h5>
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