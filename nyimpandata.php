<?php
  include("open_con.php");
  $varuserid=$_REQUEST['userid'];
  $varusernama=$_REQUEST['usernama'];
  $varuserpassword=$_REQUEST['userpass'];
  
  $tsql="INSERT INTO se_user VALUES('$varuserid','$varusernama','','','',MD5('$varuserpassword'),
       '','','','','','','','','','','','',NOW())";
  $resulttsql=mysqli_query($conn, $tsql);
	header("location:index.html");
?>