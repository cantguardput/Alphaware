<?php

	include('db/dbconn.php');
	if (isset($_POST['signup']))
{
	$firstname=$_POST['firstname'];

	$lastname=$_POST['lastname'];
	$address=$_POST['address'];
	
	$mobile=$_POST['mobile'];

	$email=$_POST['email'];
	$password=$_POST['password'];
	$check = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM `customer` WHERE `email` = '$email'"));
		if($check == 1)
			{
				echo "<script>alert('EMAIL ALREADY EXIST')</script>";	 
			}
			
			else
				{
					mysqli_query ($conn, "INSERT INTO customer (firstname,  lastname, address, mobile, email, password)
					VALUES ('$firstname', '$lastname', '$address',  '$mobile',  '$email', '$password')") 
					or die(mysqli_error());	
				}				
					
}
?>