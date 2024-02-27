<?php
include ("open_con.php");

$userid=$_REQUEST['userid'];
$username=$_REQUEST['username'];
$userpwd=$_REQUEST['userpassword'];

$query = "SELECT COUNT(*) FROM se_user WHERE USER_id='$userid'";
$result=mysqli_query($conn, $query);
$row = mysqli_fetch_row($result);
$sudahadadata = $row[0];

if ($sudahadadata <= 0)
{
	$tsql="INSERT INTO se_user (user_id, user_name, user_pwd) VALUES('$userid', '$username', '$userpwd')";
	$resulttsql=mysqli_query($conn, $tsql);
	echo "Berhasil";
}
else
{
	echo "User ID $userid sudah digunakan";
}