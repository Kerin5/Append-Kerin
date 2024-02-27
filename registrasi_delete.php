<?php
include ("open_con.php");

$userid=$_REQUEST['userid'];

$tsql="DELETE FROM se_user WHERE user_id='$userid'";
$resulttsql=mysqli_query($conn, $tsql);

echo "Berhasil hapus data";