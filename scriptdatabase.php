<?php
# Contoh Script SELECT, INSERT, UPDATE, DELETE


include ("open_con.php");

# QUERY 1 data
$query = "SELECT * FROM tbl_data_barang";
$result=mysqli_query($conn, $query);
$row = mysqli_fetch_row($result);
$namabarang = $row[2];
//echo $namabarang;
//exit;

# QUERY Banyak Data
$query = "SELECT * FROM tbl_data_barang WHERE nama_barang like '%buku%' ORDER BY nama_barang";
$result=mysqli_query($conn, $query);
while($row=mysqli_fetch_array($result))
{
   $namabarang = $row[2];
   echo $namabarang;
   echo "<BR>";
}
exit;

# INSERT
$tsql="INSERT INTO se_user VALUES('tomi','Tommy J Pissa','PT Berdikari','','',MD5('123456'),
       '','','','','','','','','','','','',NOW())";
$resulttsql=mysqli_query($conn, $tsql);
exit;

# UPDATE
$tsql="UPDATE se_user set user_name='Tommy Sunandar' WHERE user_id='tomi'";
$resulttsql=mysqli_query($conn, $tsql);
exit;

# DELETE
$tsql="DELETE FROM se_user WHERE user_id='tomi'";
$resulttsql=mysqli_query($conn, $tsql);
exit;

