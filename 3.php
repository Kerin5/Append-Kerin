<?php
  include("open_con.php");
	$query = "SELECT * FROM tbl_data_barang nama_barang ORDER BY nama_barang";
	$result=mysqli_query($conn, $query);
	while($row=mysqli_fetch_array($result))
	{
   $namabarang = $row[2];
   echo $namabarang;
   echo "<BR>";
	}
exit;
 ?>