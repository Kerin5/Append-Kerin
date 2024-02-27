<?php
# Contoh Script Baca TXT, Tulis TXT


# Baca TXT
$namafile = "data.txt";
$handelfile = fopen($namafile, "r");
while ( $line = fgets($handelfile, 1000) )
{
	   $nomor = substr($line,1-1,3);
	   $nama = substr($line,9-1,14);
	   echo "Nomor : $nomor";
	   echo "<BR>";
	   echo "Nama : $nama";
	   echo "<BR>";
}
exit;

// Tulis TXT
$namafile = "data.txt";
$handelfile = fopen($namafile, 'a') or die("can't open file");
$vartulis = "002     Andi Suteja   2002-12-04\n";
fwrite($handelfile,$vartulis);
exit;

