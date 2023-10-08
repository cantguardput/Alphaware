<?php

		include ("../db/dbconn.php");
		include ("session.php");
			if(ISSET($_POST['edit']));
			{
				$id = $_SESSION['id'];
				
				$firstname=$_POST['firstname'];
				
				$lastname=$_POST['lastname'];
				$address=$_POST['address'];
				
				$mobile=$_POST['mobile'];
				
				$email=$_POST['email'];
				$password=$_POST['password'];
				
				mysqli_query($conn, "UPDATE customer SET firstname='$firstname', lastname='$lastname', address='$address',
							mobile='$mobile', email='$email', password='$password' WHERE customerid='$id' ") or die (mysqli_error());
							
					header("location:../home.php");
			}
		
	?>