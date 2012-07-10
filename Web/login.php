<?php
include('db_connect.php');
if(!isset($_POST['submit']))
{
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css"  media="all" href="styles/main.css"  rel="stylesheet" />
<title>Sign-in</title>
</head>

<body>
<div id="main_content">
<div id="header">
                   <h2>Login</h2>
                   
 </div>
 <div id="log">
         <form action="login.php" method="post">
         <table border="0">
         <tr>
         <td>Username </td><td>: <input type="text" name="username" /></td></tr>
         <tr>
         <td>Password </td><td>: <input type="password" name="password" /></td></tr>
         <tr>
         <td></td><td id="submit"><input type="submit" value="Log in" name="submit" /></td></tr>
         </table>
         </form>
         </div>
         <div id="footer"><?php include('footer.php'); ?></div>
 </div>
      
<?php
}
	else
{
    $username=$_POST['username'];
    $assword=$_POST['password'];
	$password=md5($assword);  
    $SQL="SELECT * FROM users WHERE username='$username' AND password='$password' ";
    $result=mysql_query($SQL) or die("Could not execute query");
	$res2=mysql_fetch_assoc($result);
    $match=mysql_num_rows($result);
	$msg='Null';
	
        if($match!=0){
			 session_start();
			 $_SESSION['username']=$username;
			 $_SESSION['userID']=$res2['user_ID'];
			 //$check=mysql_fetch_assoc($result);
			  if($res2['user_level']==1)
			   {
				 header("Location:admin_panel.php"); 
			   }
			   else
			   {
				   }
			   
            }
        else{
             $msg="Wrong username or password!";
            }
     echo $msg;
}

?>
</body>
</html>