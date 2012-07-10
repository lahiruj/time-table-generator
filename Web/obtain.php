<?php
include('db_connect.php');

$year_val = $_POST['year_val'];
$sem_val = $_POST['sem_val'];
if($year_val==1)
{
   if($sem_val==1)
	   $sem_id=1;
   else
       $sem_id=2;
}
else if($year_val==2)
{
   if($sem_val==1)
	   $sem_id=3;
   else
       $sem_id=4;
}
else if($year_val==3)
{
   if($sem_val==1)
	   $sem_id=5;
   else
       $sem_id=6;
}
else if($year_val==4)
{
   if($sem_val==1)
	   $sem_id=7;
   else
       $sem_id=8;
}
   
//echo ("you requested year ".$year_val." semester ".$sem_val." time table! Semester ID is ".$sem_id);
header("Location:view_timetable.php?sem_id=$sem_id");
?>