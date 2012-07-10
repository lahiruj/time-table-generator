<?php if(isset($_GET['sem_id']))
{   
    include('db_connect.php');
	$sem_id=$_GET['sem_id'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css"  media="all" href="styles/main.css"  rel="stylesheet" />
<title>Time Table</title>
</head>

<body>
<div id="main_content">
<div id="header">
<h2>Time Table</h2>
<?php
include('header.php');


switch($sem_id)
{
  case (1):  
  {
   $year_val = 1;
   $sem_val = 1;
  break;
  }
  
  case (2):
  {    
   $year_val = 1;
   $sem_val = 2;
  break;
  }
  
  case (3):
  { 
    $year_val = 2;
    $sem_val = 1;
  break;
  }
  
  case (4):
  {  
    $year_val = 2;
    $sem_val = 2;
  break;
  }
  
  case (5):
  { 
    $year_val = 3;
    $sem_val = 1;
  break;
  }
  
  case (6):
  { 
    $year_val = 3;
    $sem_val = 2;
  break;
  }
  
  case (7):
  { 
    $year_val = 4;
    $sem_val = 1;
  break;
  }
  
  case (8):
  { 
    $year_val = 4;
    $sem_val = 2;
  break;
  }
  
  default :
  {
   $year_val = 1;
   $sem_val = 1;
   break;
  }
}
echo ("Time Table for year ".$year_val." semester ".$sem_val);
?>
</div>
<table border="0" id="time">
<tr><th>Time</th>                <th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th></tr>
<?php
$result=mysql_query("SELECT * FROM gen_time_table_year_".$year_val."");

/*$i=0;$result=mysql_query("SELECT * FROM time_table_year_".$year_val."");
while ($data=mysql_fetch_array($result))$result=mysql_query("SELECT * FROM gen_time_table_year_".$year_val."");
{
   $slot[$i][0]=$data['8-9'];
   
   echo ($slot[$i][0]);
   $i++;
}*/


$i=0;
$time=8;
$AM_PM='AM';
while ($data=mysql_fetch_array($result))
		 {
          $slot[$i][0]=$data['8-9'];
          $slot[$i][1]=$data['9-10'];
          $slot[$i][2]=$data['10-11'];
          $slot[$i][3]=$data['11-12'];
          $slot[$i][4]=$data['1-2'];
          $slot[$i][5]=$data['2-3'];
          $slot[$i][6]=$data['3-4'];
          $i++;
		 }
		 for($i=0;$i<7;$i++,$time++)
		 {
		  ?>
<?php if($time==12){ ?>
<tr><td>12.00 PM - 1.00 PM</td><td colspan="5"><center>Lunch Break</center></td></tr>
<?php $i=$i-1;
      $AM_PM='PM'; }
else { ?>
<tr><td><?php echo $time ?>.00 <?php echo $AM_PM ?> - <?php echo $time+1 ?>.00 <?php if($time==11){echo ("PM");}else echo $AM_PM ?></td>  <td><?php echo $slot[0][$i] ?></td>   <td><?php echo $slot[1][$i] ?></td>    <td><?php echo $slot[2][$i] ?></td>       <td><?php echo $slot[3][$i] ?></td>    <td><?php echo $slot[4][$i] ?></td></tr>
<?php }} ?>
</table>
<div id="footer"><?php include('footer.php'); ?></div>
</div>

</body>
</html>
<?php } ?>