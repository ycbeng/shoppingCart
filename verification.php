<?php
session_start();
include("config.php");	//import the databae connection 
$u=$_POST['username']; 	//get username key in from the login form
$p=$_POST['pass'];		//get the password value from login form
$sql="select * from user where username='$u' and password='$p'"; // verify the username/ password
$result = $conn->query($sql);

/* if ($result->num_rows>0) {	
	while($row=$result->fetch_assoc()){		
		$_SESSION['user'] = $u; //assign the username to session value		
		echo $_SESSION['user']." login Successful";
	}
}
else{	
    echo "Login Failed";
} */
if ($stmt = $conn->prepare("select username,password from user where username=? and password=?")) {

    /* bind parameters for markers */
    $stmt->bind_param("ss", $u,$p);    
    $stmt->execute();    
    $stmt->bind_result($user,$pass);    
    if($stmt->fetch()){		
		$_SESSION['user'] = $u; //assign the username to session value		
        echo $_SESSION['user']." login Successful";
        echo "<script>window.location.assign('table.php');</script>";
    }
    else{
        echo "Login Fail";
        echo "<script>window.location.assign('index.html');</script>";
    }
    $stmt->close();
}

?>