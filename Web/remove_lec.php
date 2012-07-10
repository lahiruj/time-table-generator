<?php 

session_start();
include('db_connect.php');
$session=session_id();

if(isset($_POST['name']))
{
	$name = $_POST['name'];

	if(!empty($name))
	{ 
		   $SQL="DELETE FROM users WHERE username='$name'";
           $result=mysql_query($SQL) or die("Could not execute query");
		   header("Location:admin_panel.php");
	   }
	   
	
	else
	{
		echo 'try again';
		header("Location:admin_panel.php");
	}
}