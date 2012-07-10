<?php
$server='localhost';
$db_username='root';
$db_password='';
$db_name='tt_gen';

$conn=mysql_connect($server,$db_username,$db_password) or die ('Connection Failure!..'.mysql_error());
$select_db=mysql_select_db($db_name,$conn) or die ('Could not select Database!..'.mysql_error());
?>